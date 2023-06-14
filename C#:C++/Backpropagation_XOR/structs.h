#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
using namespace std;

typedef struct neuron_t{
    float actv; // 
    float *out_weights;
    float bias;
    float z;

    float dactv;
    float *dw;
    float dbias;
    float dz;
} neuron;

typedef struct layer{
    int neurons;
    struct neuron_t *neu;
}layer;