# Simplegame
### Ryan Jacoby

Simplegame is a light wieght game engine for making text based, top down dungeon crawlers.

## Future features
- Read map+basic config from `config/main.txt`
- Add support for multi-page maps
- Add inventory gui+support
- Add custom item support(can be on ground, or start in player inventory)
- Add chests(random or predefined contents)
- Add health and things to do damage(spikes, etc..)
- Add custom enemy support

## Config documentation
### Folder structure
```
|--Config
|  |--main.txt
|--simplegame
```
### main.txt
Needed Arguments:
- First line: `game_main`
- End: MAP
> Map ascii art follows this argument.
Optional Arguments: 
- Title
> Will not display if not provided
- Creator
> Will not display if not provided
- Player Positon
> Will default to (1, 1) if not provided.  Upper left corner is (0, 0), down +y and right +x.
```game_main
title:Test Title
creator:Ryan
player@1,1

MAP
##########
# # #    #
# # ## # #
# #  # # #
#      # #
# ### ## #
# # # #F #
# # # ####
#   #    #
##########
```