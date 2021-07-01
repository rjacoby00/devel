//Ryan Jacoby
//Advent of code 2.1

#include <iostream>
#include <fstream>
#include <vector>
using namespace std;


int main() {
    ifstream fin;
    vector<int> input;
    int ip = 0;

    fin.open("input.txt");
    while(fin.good()) {
        int line;
        fin >> line;

        input.push_back(line);
    }

    while(input.at(ip) != 99) {
        cout << input.at(ip) << '\n';
        if(input.at(ip) == 1) {
            input.at(input.at(ip+3)) = input.at(input.at(ip + 1)) + input.at(input.at(ip + 2));
            ip += 4;
        } else if(input[ip] == 2) {
            input.at(input.at(ip+3)) = input.at(input.at(ip + 1)) * input.at(input.at(ip + 2));
            ip += 4;
        }
    }

    cout << input.at(0) << '\n';
}
