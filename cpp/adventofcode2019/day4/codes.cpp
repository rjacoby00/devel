//Ryan Jacoby
//Advent of code 1.2

#include <iostream>
using namespace std;

void getDigits(int x, int digits[], int pos);

int main() {
    int sum = 0;

    for(int i = 357253; i < 892942; i++) {
        int digits[6];
        int working = 357253;
        int max = -100;
        bool meetsCriteria = true;

        getDigits(i, digits, 5);

        for(int i = 0; i < 6; i++) {
            if(digits[i] < max) meetsCriteria = false;
            else max = digits[i];
        }

        bool doubleChar = false;
        int doublePrevious = digits[0], previous = digits[1];
        for(int i = 2; i < 6; i++) {
            if(digits[i] == previous && digits[i] != doublePrevious) doubleChar = true;
            previous = digits[i];
            doublePrevious = digits[i-1];
        }


        if(meetsCriteria && doubleChar) sum++;
    }


    cout << sum << '\n';
}


void getDigits(int x, int digits[], int pos) {
    if(x >= 10)
       getDigits(x / 10, digits, pos - 1);

    int digit = x % 10;

    digits[pos] = digit;
}