// Ryan Jacoby

#include <iostream>
#include <fstream>
#include <string>
#include <vector>

int main() {
    std::ifstream fin;
    std::vector<std::string> lines;
    int valid_passwords = 0;

    fin.open("input1.txt");
    while(fin.good()) {
        std::string tmp;
        fin >> tmp;
        lines.push_back(tmp);
    }

    std::cout << lines[1].substr(0, lines[1].find("-")) << '\t';

    for(std::string s : lines) {
        // int min = std::stoi(s.substr(0, s.find("-")));
        // std::cout << s.substr(0, s.find("-")) << '\t';
    }

    return 0;
}