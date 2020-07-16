// Ryan Jacoby
// Compiled on GNU/Linux with nvcc 10.2.89
// Test time with: nvprof --unified-memory-profiling off ./test
// Ran on RTX 2080 in 1.5752ms

#include<iostream>

__global__ void add(int, float *, float *);

int main() {
    int N = 1<<20;
    float *x, *y;

    cudaMallocManaged(&x, N*sizeof(float));
    cudaMallocManaged(&y, N*sizeof(float));

    for(int i = 0; i < N; i++) {
        x[i] = 1.0f;
        y[i] = 2.0f;
    }

    int blockSize = 1024;
    int blocks = (N + blockSize - 1) / blockSize;
    add<<<blocks, blockSize>>>(N, x, y);    // Blocks: how many batches of threads; block size: how many threads per block

    cudaDeviceSynchronize();

    float maxError = 0.0f;
    for (int i = 0; i < N; i++)
        maxError = fmax(maxError, fabs(y[i]-3.0f));
    std::cout << "Max error: " << maxError << std::endl;

    cudaFree(x);
    cudaFree(y);

    return 0;
}

__global__ 
void add(int n, float *x, float *y) {
    int index = blockIdx.x * blockDim.x + threadIdx.x;
    int stride = blockDim.x * gridDim.x;

    for(int i = index; i < n; i += stride)
        y[i] = x[i] + y[i];
}