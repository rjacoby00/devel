// Ryan Jacoby

#include <iostream>
#include <fstream>
#include <vector>

int main() {
    std::ifstream fin;
    std::vector<std::string> input;

    fin.open("input1.txt");
    while(fin.good()) {
        std::string i;
        fin >> i;
        input.push_back(i);
    }

    int trees = 0;

    for(int i = 0; i < 30; i++) {
        if(input[i*3].at(30 - i) == '#') trees++;
    }

    std::cout << trees << '\n';

    return 0;
}