#include <iostream>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

typedef struct neurons{
    float actv;
    float *out_weights;
    float bias;
    float z;

    float dactv;
    float *dw;
    float dbias;
    float dz;
}neuron;

typedef struct layers{
	int num_neu;
	struct neurons *neu; 
} layer;

neuron create_neuron(int num_out_weights)
{
	neuron neu;
	neu.actv = 0.0;
	neu.out_weights = (float*) malloc(num_out_weights * sizeof(float));
	neu.bias=0.0;
	neu.z = 0.0;

	neu.dactv = 0.0;
	neu.dw = (float*) malloc(num_out_weights * sizeof(float));
	neu.dbias = 0.0;
	neu.dz = 0.0;

	return neu;
};

layer create_layer(int number_of_neurons)
{
	layer lay;
	lay.num_neu = -1;
	lay.neu = (struct neurons *) malloc(number_of_neurons * sizeof(struct neurons));
	return lay;
};

int create_network(int layers_num, int *neurons_num){

    return 0;
};

int main(){
    
    // Pedir número de capas al usuario
    int layers_num;
    cout<<"¿Cuántas capas desea?"; cin >>layers_num;
    int neurons_num [layers_num];

    //Pedir neuronas por capa al usuario
    for(int i = 1; i <= layers_num; i++){
        cout<<"Ingresa número de nueronas para capa " << i << " : " << endl;
        cin>>neurons_num[i];
    };

    //Creando capas
    create_network(layers_num, neurons_num);

    

    // Características de la Red
    cout << "+++++Caracteríasticas de la Red++++++" << endl;
    cout<<"Número de capas: " << layers_num << endl; 
    for(int i = 1; i <= layers_num; i++){
        cout<<"Número de neuronas para capa: "<< i << endl;
        cout<<neurons_num[i] << endl;
    };
     
    return 0;
}