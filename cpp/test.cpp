#include <iostream>
using namespace std;

bool isValidEmailCharacter(char c);

int main() {
  cout << isValidEmailCharacter('3');
}

bool isValidEmailCharacter(char c) {
    return c=='.' || c=='-' || c=='+' ||  (c>='A' && c <='Z') || (c>='a' && c <='z')|| (c>='0' && c <='9');
}
