//Ryan Jacoby
#include <ncurses.h>

using namespace std;

int main() {
    initscr();

    printw("Test");
    refresh();
    getch();

    endwin();
    return 0;
}