#define _CRT_SECURE_NO_WARNINGS

#include <array>
#include <cassert>
#include <csignal>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <thread>
#include <vector>

#include "discord.h"

struct DiscordState {
    discord::User currentUser;

    std::unique_ptr<discord::Core> core;
};

namespace {
volatile bool interrupted{false};
}

int main(int, char**)
{
    DiscordState state{};

    discord::Core* core{};
    auto result = discord::Core::Create(810819370426040340, DiscordCreateFlags_Default, &core);
    state.core.reset(core);
    if (!state.core) {
        std::cout << "Failed to instantiate discord core! (err " << static_cast<int>(result)
                  << ")\n";
        std::exit(-1);
    }

    state.core->SetLogHook(
      discord::LogLevel::Debug, [](discord::LogLevel level, const char* message) {
          std::cerr << "Log(" << static_cast<uint32_t>(level) << "): " << message << "\n";
      });

    core->UserManager().OnCurrentUserUpdate.Connect([&state]() {
        state.core->UserManager().GetCurrentUser(&state.currentUser);

        std::cout << "Current user updated: " << state.currentUser.GetUsername() << "#"
                  << state.currentUser.GetDiscriminator() << "\n";

        discord::ImageHandle handle{};
        handle.SetId(state.currentUser.GetId());
        handle.SetType(discord::ImageType::User);
        handle.SetSize(256);

        state.core->ImageManager().Fetch(
          handle, true, [&state](discord::Result res, discord::ImageHandle handle) {
              if (res == discord::Result::Ok) {
                  discord::ImageDimensions dims{};
                  state.core->ImageManager().GetDimensions(handle, &dims);
                  std::cout << "Fetched " << dims.GetWidth() << "x" << dims.GetHeight()
                            << " avatar!\n";

                  std::vector<uint8_t> data;
                  data.reserve(dims.GetWidth() * dims.GetHeight() * 4);
                  uint8_t* d = data.data();
                  state.core->ImageManager().GetData(handle, d, data.size());
              }
              else {
                  std::cout << "Failed fetching avatar. (err " << static_cast<int>(res) << ")\n";
              }
          });
    });

    state.core->ActivityManager().RegisterCommand("firefox https://rjacoby.net");

    state.core->ActivityManager().OnActivityJoin.Connect(
      [](const char* secret) { std::cout << "Join " << secret << "\n"; });
    state.core->ActivityManager().OnActivitySpectate.Connect(
      [](const char* secret) { std::cout << "Spectate " << secret << "\n"; });
    state.core->ActivityManager().OnActivityJoinRequest.Connect([](discord::User const& user) {
        std::cout << "Join Request " << user.GetUsername() << "\n";
    });
    state.core->ActivityManager().OnActivityInvite.Connect(
      [](discord::ActivityActionType, discord::User const& user, discord::Activity const&) {
          std::cout << "Invite " << user.GetUsername() << "\n";
      });

    discord::Activity activity{};
    activity.SetDetails("Fruit Tarts");
    activity.SetState("Pop Snacks");
    activity.GetAssets().SetSmallImage("the");
    activity.GetAssets().SetSmallText("i mage");
    activity.GetAssets().SetLargeImage("main");
    activity.GetAssets().SetLargeText("rjacoby00");
    activity.SetType(discord::ActivityType::Listening);
    activity.GetSecrets().SetJoin("aaaa");
    activity.GetParty().SetId("bbbb");
    activity.GetParty().GetSize().SetCurrentSize(1);
    activity.GetParty().GetSize().SetMaxSize(2);
    state.core->ActivityManager().UpdateActivity(activity, [](discord::Result result) {
        std::cout << ((result == discord::Result::Ok) ? "Succeeded" : "Failed")
                  << " updating activity!\n";
    });

    /*
    state.core->RelationshipManager().OnRefresh.Connect([&]() {
        std::cout << "Relationships refreshed!\n";

        state.core->RelationshipManager().Filter(
          [](discord::Relationship const& relationship) -> bool {
              return relationship.GetType() == discord::RelationshipType::Friend;
          });

        std::int32_t friendCount{0};
        state.core->RelationshipManager().Count(&friendCount);

        state.core->RelationshipManager().Filter(
          [&](discord::Relationship const& relationship) -> bool {
              return relationship.GetType() == discord::RelationshipType::Friend &&
                relationship.GetUser().GetId() < state.currentUser.GetId();
          });

        std::int32_t filteredCount{0};
        state.core->RelationshipManager().Count(&filteredCount);

        discord::Relationship relationship{};
        for (auto i = 0; i < filteredCount; ++i) {
            state.core->RelationshipManager().GetAt(i, &relationship);
            std::cout << relationship.GetUser().GetId() << " "
                      << relationship.GetUser().GetUsername() << "#"
                      << relationship.GetUser().GetDiscriminator() << "\n";
        }
    });

    state.core->RelationshipManager().OnRelationshipUpdate.Connect(
      [](discord::Relationship const& relationship) {
          std::cout << "Relationship with " << relationship.GetUser().GetUsername()
                    << " updated!\n";
      });
    */

    std::signal(SIGINT, [](int) { interrupted = true; });

    do {
        state.core->RunCallbacks();

        std::this_thread::sleep_for(std::chrono::milliseconds(16));
    } while (!interrupted);

    return 0;
}
