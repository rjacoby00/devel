// Ryan Jacoby
// Compiled on GNU/Linux with nvcc v10.2.89

#include<iostream>

__global__ void output();

int main() {
    output <<<1, 32>>>();
    cudaDeviceSynchronize();

    return 1;
}

__global__
void output() {
    int block = blockIdx.x;
    int thread = threadIdx.x;

    printf("Block: %d\tThread: %d\n", block, thread);
}