#ifndef LAYER_H
#define LAYER_H

#include "neuron.h"
//import neuron.h

typedef struct layer_t
{
	int num_neu;
	struct neuron_t *neu; 
} layer;

// define structures for Neuron and Layer

layer create_layer(int num_neurons);

// annouce funtion which is relative to layer

#endif