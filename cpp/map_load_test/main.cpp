//Ryan Jacoby
//Compile with: g++ -o map_test main.cpp -lncurses -std=c++17 && ./map_test
#include <ncurses.h>
#include <stdlib.h>
#include <iostream>
#include <fstream>
#include <string>
//#include <sstream>

using namespace std;

int main() {

	cout << "\n\n";
	
	string line;
	string map_raw;
	int count;
	int max_count = 0;
	int lines = 0;
	int line_number = 0;
	bool success = false;
	ifstream mapfile("map.txt");
	if(mapfile.is_open()) {
		while(getline(mapfile, line)) {
			map_raw = map_raw + line + '\n';
		}
		mapfile.close();
		
		for(u_int i = 0; i < map_raw.length(); i++) {
			if(map_raw.at(i) != '\n'){
				count++;
				if(count > max_count) max_count = count;
			}
			else {
				count = 0;
				lines++;
			}
		}

		success = true;
		
	} else {
		cout << "Unable to open map file, using default\n";
		max_count = 10;
		lines = 10;
	}

	char map[max_count][lines]; 

	if (success) {
		for(u_int i = 0; i < map_raw.length(); i++) {
			if(map_raw.at(i) != '\n'){
				count++;
				map[count][line_number] = map_raw.at(i);
			}
			else {
				count = 0;
				line_number++;
			}
		}
	} else {
		map = {{'#', '#', '#', '#', '#', '#', '#', '#', '#', '#'}, 
			   {'#', ' ', '#', ' ', '#', ' ', ' ', ' ', ' ', '#'}, 
			   {'#', ' ', '#', ' ', '#', '#', ' ', '#', ' ', '#'}, 
			   {'#', ' ', '#', ' ', ' ', '#', ' ', '#', ' ', '#'}, 
			   {'#', ' ', ' ', ' ', ' ', ' ', ' ', '#', ' ', '#'}, 
			   {'#', ' ', '#', '#', '#', ' ', '#', '#', ' ', '#'}, 
			   {'#', ' ', '#', ' ', '#', ' ', '#', 'F', ' ', '#'},
			   {'#', ' ', '#', ' ', '#', ' ', '#', '#', '#', '#'}, 
			   {'#', ' ', ' ', ' ', '#', ' ', ' ', ' ', ' ', '#'},
			   {'#', '#', '#', '#', '#', '#', '#', '#', '#', '#'}};
	}   	
    initscr();
    if (has_colors() == FALSE) {
        endwin();
        printf("Your terminal does not support color\n");
        exit(1);
    }
    
    start_color();
    init_pair(1, COLOR_WHITE, COLOR_BLACK);
    init_pair(2, COLOR_RED, COLOR_WHITE);
    init_pair(3, COLOR_GREEN, COLOR_BLACK);
	char key;
	
    while (key != 27){
    	for(int i = 0; i < sizeof(map)/sizeof(map[0]); i++) {   //Draw the screen
	        for(int j = 0; j < sizeof(map[0])/sizeof(map[0][0]); j++) {
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
	        printw("\n");
	    }

        key = getch();
        erase();
        refresh();
    }
    
    endwin();
    return 0;
}

