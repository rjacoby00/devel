//Ryan Jacoby
//Advent of code 1.2

#include <iostream>
#include <fstream>
using namespace std;

int main() {
    ifstream fin;
    int input[100];
    int n = 0, sum = 0;

    fin.open("input.txt");
    while(fin.good()) {
        int line;
        fin >> line;

        if(n < 100) input[n] = line;
        n++;
    }

    for(int i = 0; i < 100; i++) {
        int val = input[i] / 3 - 2, vals = 0;
        while(val > 0) {
            vals += val;
            val = val / 3 - 2;
        }
        sum += vals;
    }

    cout << sum << '\n';
}