#include <iostream>
#include <string>
using namespace std;

int main() {
    string input = "";
    string password = "tHiS_iS_a_PaSsWoRd_ThAt_YoU_wIlL_nEvEr_GuEsS";
    cout << "What is the password?\n";
    cin >> input;
    if (input == password) {
        cout << "That is the correct password.  The flag is {yee}\n";
    } else {
        cout << "That is an incorrect password!  No flag for you\n";
    }
    return 0;
}