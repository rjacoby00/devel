// Ryan Jacoby
// Compiled on GNU/Linux with g++ 10.1.0
// Outputs time at end
// Ran on Intel Core i5-8600k@4.3(single core) GHz in 2.355ms
// Ran on Intel Core i5-8600k@4.5(single core) GHz in 2.197ms

#include<iostream>
#include<chrono>

using namespace std;
using namespace std::chrono;

#include <stdlib.h> 

void add(int, float *, float *);

int main() {
    int N = 1<<20;
    float *x, *y;

    x = (float *) malloc(N*sizeof(float));
    y = (float *) malloc(N*sizeof(float));

    for(int i = 0; i < N; i++) {
        x[i] = 1.0f;
        y[i] = 2.0f;
    }

    auto start = high_resolution_clock::now();
    add(N, x, y);
    auto end = high_resolution_clock::now();

    free(x);
    free(y);

    cout << "Time to add two arrays with " << N << " elements in each: " << duration_cast<microseconds>(end - start).count() / 1000.0 << " ms\n";

    return 0;
}

void add(int n, float *x, float *y) {
    for(int i = 0; i < n; i ++)
        y[i] = x[i] + y[i];
}