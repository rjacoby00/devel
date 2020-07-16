#include <iostream>
using namespace std;

int main () {
  int c = 0;
  int out = 0;
  int tempout = 0;
  string chars = "FF";
  while (c < 2) {
    if (chars.substr(c, c) == "0") {tempout = 0;}
    else if (chars.substr(c, c) == "1") {tempout = 1;}
    else if (chars.substr(c, c) == "2") {tempout = 2;}
    else if (chars.substr(c, c) == "3") {tempout = 3;}
    else if (chars.substr(c, c) == "4") {tempout = 4;}
    else if (chars.substr(c, c) == "5") {tempout = 5;}
    else if (chars.substr(c, c) == "6") {tempout = 6;}
    else if (chars.substr(c, c) == "7") {tempout = 7;}
    else if (chars.substr(c, c) == "8") {tempout = 8;}
    else if (chars.substr(c, c) == "9") {tempout = 9;}
    else if (chars.substr(c, c) == "A") {tempout = 10;}
    else if (chars.substr(c, c) == "B") {tempout = 11;}
    else if (chars.substr(c, c) == "C") {tempout = 12;}
    else if (chars.substr(c, c) == "D") {tempout = 13;}
    else if (chars.substr(c, c) == "E") {tempout = 14;}
    else if (chars.substr(c, c) == "F") {tempout = 15;}
      
    if (c == 0) {tempout = tempout * 15;}

    out = out + tempout;
    c++;
  }

  std::cout << out;
}