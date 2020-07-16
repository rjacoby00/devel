//Ryan Jacoby
#include <iostream>
#include <filesystem>

using namespace std;
namespace fs = filesystem;

int main() {

    if (fs::exists("testing_files/file")) {
        cout << "The file exists\n";
    } else {
        cout << "That file does not exist\n";
    }

    return 0;
}