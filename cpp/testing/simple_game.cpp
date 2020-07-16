//Ryan Jacoby
//Compile with: g++ -lstdc++fs -lncurses -std=c++17 -o game simple_game.cpp -lstdc++fs
#include <ncurses.h>
#include <stdlib.h>
#include <filesystem>
#include <iostream>
#include <fstream>
#include <sstream>

using namespace std;
namespace fs = std::filesystem;

char default_map[10][10] = {
    {'#', '#', '#', '#', '#', '#', '#', '#', '#', '#'}, 
    {'#', ' ', '#', ' ', '#', ' ', ' ', ' ', ' ', '#'}, 
    {'#', ' ', '#', ' ', '#', '#', ' ', '#', ' ', '#'}, 
    {'#', ' ', '#', ' ', ' ', '#', ' ', '#', ' ', '#'}, 
    {'#', ' ', ' ', ' ', ' ', ' ', ' ', '#', ' ', '#'}, 
    {'#', ' ', '#', '#', '#', ' ', '#', '#', ' ', '#'}, 
    {'#', ' ', '#', ' ', '#', ' ', '#', 'F', ' ', '#'},
    {'#', ' ', '#', ' ', '#', ' ', '#', '#', '#', '#'}, 
    {'#', ' ', ' ', ' ', '#', ' ', ' ', ' ', ' ', '#'},
    {'#', '#', '#', '#', '#', '#', '#', '#', '#', '#'}};

char map[10][10] = {
    {'#', '#', '#', '#', '#', '#', '#', '#', '#', '#'}, 
    {'#', ' ', '#', ' ', '#', ' ', ' ', ' ', ' ', '#'}, 
    {'#', ' ', '#', ' ', '#', '#', ' ', '#', ' ', '#'}, 
    {'#', ' ', '#', ' ', ' ', '#', ' ', '#', ' ', '#'}, 
    {'#', ' ', ' ', ' ', ' ', ' ', ' ', '#', ' ', '#'}, 
    {'#', ' ', '#', '#', '#', ' ', '#', '#', ' ', '#'}, 
    {'#', ' ', '#', ' ', '#', ' ', '#', 'F', ' ', '#'},
    {'#', ' ', '#', ' ', '#', ' ', '#', '#', '#', '#'}, 
    {'#', ' ', ' ', ' ', '#', ' ', ' ', ' ', ' ', '#'},
    {'#', '#', '#', '#', '#', '#', '#', '#', '#', '#'}};

int loadmap();

int main() {
    initscr();
    if (has_colors() == FALSE) {
        endwin();
        printf("Your terminal does not support color\n");
        exit(1);
    }
    
    int playerPosition[2] = {1, 1};
    int previousPlayerPosition[2] = {1, 1};
    char key;

    start_color();
    init_pair(1, COLOR_WHITE, COLOR_BLACK);
    init_pair(2, COLOR_RED, COLOR_WHITE);
    init_pair(3, COLOR_GREEN, COLOR_BLACK);

    loadmap();

    while (key != 27){
        for(int i = 0; i < sizeof(map)/sizeof(map[0]); i++) {   //Draw the screen
            for(int j = 0; j < sizeof(map[0])/sizeof(map[0][0]); j++) {
                if(i == playerPosition[0] && j == playerPosition[1]) {
                    printw("[");
                    attron(COLOR_PAIR(2));
                    printw("*");
                    attroff(COLOR_PAIR(2));
                    printw("]");
                } else {
                    printw("[");
                    if (map[i][j] == 'F') {
                        attron(COLOR_PAIR(3));
                    } else {
                        attron(COLOR_PAIR(1));
                    }
                    printw("%c", map[i][j]);
                    if (map[i][j] == 'F') {
                        attroff(COLOR_PAIR(3));
                    } else {
                        attroff(COLOR_PAIR(1));
                    }
                    printw("]");
                }
            }
            printw("\n");
        }
        printw("You are the ");
        attron(COLOR_PAIR(2));
        printw("*");
        attroff(COLOR_PAIR(2));
        printw("\nPres ESC to leave, move with WASD\nTo win, get to ");
        attron(COLOR_PAIR(3));
        printw("F");
        attroff(COLOR_PAIR(3));
        printw(".  The game will quit when you do.");
        key = getch();
        if (key == 'w') {   //player movement code
            previousPlayerPosition[0] = playerPosition[0];
            previousPlayerPosition[1] = playerPosition[1];
            playerPosition[0] = playerPosition[0]-1;
            if (map[playerPosition[0]][playerPosition[1]] == '#'){
                playerPosition[0] = previousPlayerPosition[0];
                playerPosition[1] = previousPlayerPosition[1];
            }
        } else if (key == 's') {
            previousPlayerPosition[0] = playerPosition[0];
            previousPlayerPosition[1] = playerPosition[1];
            playerPosition[0] = playerPosition[0]+1;
            if (map[playerPosition[0]][playerPosition[1]] == '#'){
                playerPosition[0] = previousPlayerPosition[0];
                playerPosition[1] = previousPlayerPosition[1];
            }
        } else if (key == 'a') {
            previousPlayerPosition[0] = playerPosition[0];
            previousPlayerPosition[1] = playerPosition[1];
            playerPosition[1] = playerPosition[1]-1;
            if (map[playerPosition[0]][playerPosition[1]] == '#'){
                playerPosition[0] = previousPlayerPosition[0];
                playerPosition[1] = previousPlayerPosition[1];
            }
        } else if (key == 'd') {
            previousPlayerPosition[0] = playerPosition[0];
            previousPlayerPosition[1] = playerPosition[1];
            playerPosition[1] = playerPosition[1]+1;
            if (map[playerPosition[0]][playerPosition[1]] == '#'){
                playerPosition[0] = previousPlayerPosition[0];
                playerPosition[1] = previousPlayerPosition[1];
            }
        }
        if (map[playerPosition[0]][playerPosition[1]] == 'F') {
            erase();
            printw("You win! (press any key to exit)");
            getch();
            key = 27;
        }
        erase();
        //printw("%d", key);
        refresh();
    }
    
    endwin();
    return 0;
}

int loadmap() {    //loads map into map array from simplegame/map.txt
    if(fs::exists("simplegame") && fs::is_directory("simplegame")) {
        if(!fs::exists("simplegame/map.txt")) {
            ofstream outputfile("simplegame/map.txt");
            for(int i = 0; i < sizeof(default_map)/sizeof(default_map[0]); i++) {
                for (int j = 0; j < sizeof(default_map[0])/sizeof(default_map[0][0]); j++) {
                    outputfile << default_map[i][j];
                }
                outputfile << "\n";
            }
        } else {
            ifstream inmap("simplegame/map.txt");
            char character_read;
            while(inmap >> character_read) {
                printw("%s", character_read);
            }
            character_read = getch();
        }

    } else {
        fs::create_directory("simplegame");
        ofstream outputfile("simplegame/map.txt");
        for(int i = 0; i < sizeof(default_map)/sizeof(default_map[0]); i++) {
            for (int j = 0; j < sizeof(default_map[0])/sizeof(default_map[0][0]); j++) {
                outputfile << default_map[i][j];
            }
            outputfile << "\n";
        }
    }

    return 0;
}