__global__ void
pagerank1(int *row, int *col, int *data, float *page_rank1, float *page_rank2,
          const int num_nodes, const int num_edges)
{
    // Get my workitem id
    int tid = hipBlockDim_x * hipBlockIdx_x + hipThreadIdx_x;

    if (tid < num_nodes) {
        // Get the starting and ending pointers of the neighborlist
        int start = row[tid];
        int end;
        if (tid + 1 < num_nodes) {
            end = row[tid + 1];
        } else {
            end = num_edges;
        }

        int nid;
        float addValue = page_rank1[tid] / (float)(end - start);
        // Navigate the neighbor list
        for (int edge = start; edge < end; edge++) {
            nid = col[edge];
            // Transfer the PageRank value to neighbors
            atomicAdd(&page_rank2[nid], addValue);
        }
    }
}