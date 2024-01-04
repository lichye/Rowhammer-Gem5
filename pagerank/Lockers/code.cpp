__global__ void k_testLocking(unsigned int* locks, int n) {
    int id = threadIdx.x % n;
    bool leaveLoop = false;
    while (!leaveLoop) {
        if (atomicExch(&(locks[id]), 1u) == 0u) {
            //critical section
            leaveLoop = true;
            atomicExch(&(locks[id]),0u);
        }
    } 
}