//Ryan Jacoby
//Advent of code 3.1

#include <iostream>
#include <fstream>
#include <string>
#include <vector>
using namespace std;


int main() {
    ifstream fin;
    vector<string> wireA, wireB;
    vector<int> pointsA, pointsB;

    bool start = true;

    fin.open("input.txt");
    while(fin.good()) {
        string line;
        getline(fin, line);

        if(line.length() == 1) start = false;
        else if(start) wireA.push_back(line);
        else wireB.push_back(line);
    }

    int wireAX = 0, wireAY = 0, wireBX = 0, wireBY = 0;
    for(int i = 0; i < wireA.size(); i++) {
        switch(wireA[i].at(0)) {
            case 'U':
                cout << "Up\n";
                for(int j = 0; j <= stoi(wireA[i].substr(1)); i++) {
                    wireAY++;
                    pointsA.push_back(wireAX);
                    pointsA.push_back(wireAY);
                }
                break;
            case 'D':
                cout << "Down\n";
                break;
            case 'L':
                cout << "Left\n";
                break;
            case 'R':
                cout << "Right\n";
                break;
            default:
                cout << "Unregocnized instruction\n";
        }
    }

    for(int i = 0; i < pointsA.size(); i++) cout << pointsA[i] << '\n';
}
