// Ryan Jacoby

#include <iostream>
#include <fstream>
#include <vector>

int main() {
    std::ifstream fin;
    std::vector<int> nums;

    fin.open("input1.txt");
    while(fin.good()) {
        int i;
        fin >> i;
        nums.push_back(i);
    }

    for(int i = 0; i < 200; i++)
        for(int j = 0; j < 200; j++)
            for(int k = 0; k < 200; k++)
                if (nums[i] + nums[j] + nums[k] == 2020) std::cout << nums[i] * nums[j] * nums[k] << '\n';

    return 0;
}