//Ryan Jacoby
//Advent of code 2.1

#include <iostream>
#include <fstream>
#include <vector>
using namespace std;


int main() {
    ifstream fin;
    vector<int> input;
    int ip = 0, noun, verb;

    fin.open("input.txt");
    while(fin.good()) {
        int line;
        fin >> line;

        input.push_back(line);
    }

    for(noun = 0; noun < 130; noun++) {
        for(verb = 0; verb < 130; verb++) {
            ip = 0;
            vector<int> working = input;
            working[1] = noun;
            working[2] = verb;

            while(working[ip] != 99) {
                if(working[ip] == 1) {
                    working[working[ip+3]] = working[working[ip+1]] + working[working[ip+2]];
                    ip += 4;
                } else if(working[ip] == 2) {
                    working[working[ip+3]] = working[working[ip+1]] * working[working[ip+2]];
                    ip += 4;
                }
            }

            if(working[0] == 19690720) cout << "Noun: " << noun << "\nVerb: " << verb;
        }
    }

    cout << '\n';
}
