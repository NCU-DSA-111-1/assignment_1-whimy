#include "backprop.h"
#include "layer.h"
#include "neuron.h"
#include "math.h"
#include "string.h"
#define NUM_LAYERS 4
#define TRANING_TIMES 20000

// define functions
void get_test();
void create_file();
void write_file();
void set_file();

// Define variables
layer *lay = NULL;
int *num_neurons;
float alpha;
float *mae;
float *mse;
float **input;
float **desired_outputs;
int num_training_ex;
int n=1;
int num_int;
char* string;
int cnum;
FILE *fp;
float *fileinput;
float *fileoutput;
float *filemae;
float *filemse;
char process_status;
char show_data;


int main(void)
{
    int i;
    create_file();
    srand(time(0));

    printf("Setting the number of Layers in Neural Network:4\n");
    // num_layers = NUM_LAYERS;     //Set the number of layers to 4

    num_neurons = (int*) malloc(NUM_LAYERS * sizeof(int));
    memset(num_neurons,0,NUM_LAYERS *sizeof(int));

    // Set number of neurons per layer
    printf("Setting the number of neurons in layer[1]:2 \n");
    *(num_neurons + 0) = 2;     //input layer
    printf("Setting the number of neurons in layer[2]:4 \n");
    *(num_neurons + 1) = 4;     //first hidden layer
    printf("Setting the number of neurons in layer[3]:4 \n");
    *(num_neurons + 2) = 4;     //second hidden layer
    printf("Setting the number of neurons in layer[4]:1 \n");
    *(num_neurons + 3) = 1;     //output layer

    printf("\n");

    // Initialize the neural network module
    if(init()!= SUCCESS_INIT)
    {
        printf("Error in Initialization...\n");
        exit(0);
    }

    // Set the learning rate to 0.15
    printf("Setting the learning rate: 0.15 \n");

    alpha = 0.15;
    printf("\n");

    
    // Set the number of training examples to 4
    printf("Setting the number of training examples: 4 \n");
    num_training_ex = 4;
    printf("\n");

    // Allocate memory to input
    input = (float**) malloc(num_training_ex * sizeof(float*));
    for(i=0;i<num_training_ex;i++)
    {
        *(input + i) = (float*)malloc(num_neurons[0] * sizeof(float));
    }

    // Allocate memory to the desired outputs
    desired_outputs = (float**) malloc(num_training_ex* sizeof(float*));
    for(i=0;i<num_training_ex;i++)
    {
        *(desired_outputs + i) = (float*)malloc(num_neurons[NUM_LAYERS-1] * sizeof(float));
    }

    // Allocate memory to the MAE
    mae = (float *) malloc(num_neurons[NUM_LAYERS-1] * sizeof(float));
    memset(mae,0,num_neurons[NUM_LAYERS-1]*sizeof(float));
    mse = (float *) malloc(num_neurons[NUM_LAYERS-1] * sizeof(float));
    memset(mse,0,num_neurons[NUM_LAYERS-1]*sizeof(float));

    // Get Training Examples
    get_inputs();

    // Get Output Labels
    get_desired_outputs();

   
    // training neral network and test the training result
    train_neural_net();

    test_nn();

    // Check if there any error in dinitialization
    if(dinit()!= SUCCESS_DINIT)
    {
        printf("Error in Dinitialization...\n");
    }

    return 0;
}

// Check whether the create functions init success or not
int init()
{
    if(create_architecture() != SUCCESS_CREATE_ARCHITECTURE)
    {
        printf("Error in creating architecture...\n");
        return ERR_INIT;
    }

    printf("Neural Network Created Successfully...\n\n");
    return SUCCESS_INIT;
}

//Get Inputs (Ask the user to enter manually)
void get_inputs()
{
    int i,j;

        for(i=0;i<num_training_ex;i++)
        {
            printf("Enter the Inputs for training example[%d]:\n",i);

            for(j=0;j<num_neurons[0];j++)
            {
                scanf("%f", (*(input+i)+j));  // input[i][j]
                
            }
            printf("\n");
        }
}

//Get the desired output (Ask the user to enter manually)
void get_desired_outputs()
{
    int i,j;
    
    for(i=0;i<num_training_ex;i++)
    {
        for(j=0;j<num_neurons[NUM_LAYERS-1];j++)
        {
            printf("Enter the Desired Outputs (Labels) for training example[%d]: \n",i);
            scanf("%f",(*(desired_outputs + i) + j));
            printf("\n");
        }
    }
}

// Feed inputs to input layer
void feed_input(int i)
{
    int j;
    for(j=0;j<num_neurons[0];j++)
    {
        lay[0].neu[j].actv = *(*(input+i)+j);
        
        if(show_data == 'y'){
            printf("Input: %f\n",lay[0].neu[j].actv);
        }
        *(fileinput+j) = lay[0].neu[j].actv;
    }
}

// Create Neural Network Architecture
int create_architecture()
{
    int i=0,j=0;
    lay = (layer*) malloc(NUM_LAYERS * sizeof(layer));

    for(i=0;i<NUM_LAYERS;i++)
    {
        lay[i] = create_layer(num_neurons[i]);      
        lay[i].num_neu = num_neurons[i];
        printf("Created Layer: %d\n", i+1);
        printf("Number of Neurons in Layer %d: %d\n", i+1,lay[i].num_neu);

        for(j=0;j<num_neurons[i];j++)
        {
            if(i < (NUM_LAYERS-1)) 
            {
                lay[i].neu[j] = create_neuron(num_neurons[i+1]);
            }

            printf("Neuron %d in Layer %d created\n",j+1,i+1);  
        }
        printf("\n");
    }

    printf("\n");

    // Initialize the weights
    if(initialize_weights() != SUCCESS_INIT_WEIGHTS)
    {
        printf("Error Initilizing weights...\n");
        return ERR_CREATE_ARCHITECTURE;
    }

    return SUCCESS_CREATE_ARCHITECTURE;
}

// Initialize the weights
int initialize_weights(void)
{
    int i,j,k;

    if(lay == NULL)
    {
        printf("No layers in Neural Network...\n");
        return ERR_INIT_WEIGHTS;
    }

    printf("Initializing weights...\n");

    for(i=0;i<NUM_LAYERS-1;i++)
    {
        
        for(j=0;j<num_neurons[i];j++)
        {
            for(k=0;k<num_neurons[i+1];k++)
            {
                // Initialize Output Weights for each neuron
                lay[i].neu[j].out_weights[k] = ((double)rand())/((double)RAND_MAX);
                printf("%d:w[%d][%d]: %f\n",k,i,j, lay[i].neu[j].out_weights[k]);
                lay[i].neu[j].dw[k] = 0.0;
            }

            if(i>0) 
            {
                lay[i].neu[j].bias = ((double)rand())/((double)RAND_MAX);
            }
        }
    }   
    printf("\n");
    
    for (j=0; j<num_neurons[NUM_LAYERS-1]; j++)
    {
        lay[NUM_LAYERS-1].neu[j].bias = ((double)rand())/((double)RAND_MAX);
    }

    return SUCCESS_INIT_WEIGHTS;
}

// Train Neural Network
void train_neural_net(void)
{
    process_status = 't';   //'t' for training status
    printf("Would you like to see the detailed process?[y/n]:");
    scanf(" %c",&show_data);

    if(show_data != 'y' && show_data != 'n'){
        printf("Command %c is undefined.\n",show_data);
    }
    int i;
    int it=0;
    // Open the file to record
    fp = fopen("train.csv","a+");
    if (fp == NULL) {
        fprintf(stderr, "fopen() failed.\n");
        exit(EXIT_FAILURE);
    }
    

    
    // Gradient Descent
    for(it=0;it<TRANING_TIMES;it++)
    {
        for(i=0;i<num_training_ex;i++)
        {
            set_file();
            feed_input(i);
            forward_prop();
            compute_cost(i);
            back_prop(i);
            write_file( fileinput,fileinput+1,fileoutput,filemae,filemse);
            update_weights();

        }
    }
    printf("Training completed!\n");
    printf("You can see the detailed training process in a csv file named 'train.csv'\n");
    printf("\nNow you can enter some examples to test-->");
    fclose(fp);
}


// Update the weights after each training
void update_weights(void)
{
    int i,j,k;

    for(i=0;i<NUM_LAYERS-1;i++)
    {
        for(j=0;j<num_neurons[i];j++)
        {
            for(k=0;k<num_neurons[i+1];k++)
            {
                // Update Weights
                lay[i].neu[j].out_weights[k] = (lay[i].neu[j].out_weights[k]) - (alpha * lay[i].neu[j].dw[k]);
            }
            
            // Update Bias
            lay[i].neu[j].bias = lay[i].neu[j].bias - (alpha * lay[i].neu[j].dbias);
        }
    }   
}

// foward propagate
void forward_prop(void)
{
    int i,j,k;
    for(i=1;i<NUM_LAYERS;i++)
    {   
        for(j=0;j<num_neurons[i];j++)
        {
            lay[i].neu[j].z = lay[i].neu[j].bias;

            for(k=0;k<num_neurons[i-1];k++)
            {
                lay[i].neu[j].z  = lay[i].neu[j].z + ((lay[i-1].neu[k].out_weights[j])* (lay[i-1].neu[k].actv));
            }

            // Relu Activation Function for Hidden Layers
            if(i < NUM_LAYERS-1)
            {
                if((lay[i].neu[j].z) < 0)
                {
                    lay[i].neu[j].actv = 0;
                }

                else
                {
                    lay[i].neu[j].actv = lay[i].neu[j].z;
                }
            }
            
            // Sigmoid Activation function for Output Layer
            else
            {
                lay[i].neu[j].actv = 1/(1+exp(-lay[i].neu[j].z));

                if(cnum+1 < num_int){
                    lay[0].neu[0].actv = (int)round(lay[i].neu[0].actv);
                    lay[0].neu[1].actv = (int)*(string + (cnum+1)) - 48;
                    cnum++;
                    forward_prop();
                }else{
                    if(process_status == 'r' || show_data == 'y'){
                        printf("Output: %d\n", (int)round(lay[i].neu[j].actv));
                    }
                    *fileoutput = (int)round(lay[i].neu[j].actv);
                    break;
                }
                
            
            }
        }
    }
}

// Compute loss
void compute_cost(int i)
{
    int j;
    float t_mae = 0;
    float t_mse = 0;
    float sum_mae = 0;
    float sum_mse = 0;

    for(j=0;j<num_neurons[NUM_LAYERS-1];j++)
    {
        *(mae + j) = fabs(*(*(desired_outputs+i)+j) - lay[NUM_LAYERS-1].neu[j].actv);
        *(mse + j) = (*(mae + j)) * (*(mae + j));
        t_mae += *(mae + j);
        t_mse += *(mse + j);

    }   

    sum_mae = (sum_mae + t_mae)/n;
    sum_mse = (sum_mse + t_mse)/n;
    *filemae = sum_mae;
    *filemse = sum_mse;
    if(show_data == 'y'){
        printf("MAE: %f\n",sum_mae);
        printf("MSE: %f\n",sum_mse);
        printf("\n");
    }
    n++;
}

// Back Propogate
void back_prop(int p)
{
    int i,j,k;

    // Output Layer
    for(j=0;j<num_neurons[NUM_LAYERS-1];j++)
    {           
        lay[NUM_LAYERS-1].neu[j].dz = (lay[NUM_LAYERS-1].neu[j].actv - (*(*(desired_outputs+p)+j))) * (lay[NUM_LAYERS-1].neu[j].actv) * (1- lay[NUM_LAYERS-1].neu[j].actv);

        for(k=0;k<num_neurons[NUM_LAYERS-2];k++)
        {   
            lay[NUM_LAYERS-2].neu[k].dw[j] = (lay[NUM_LAYERS-1].neu[j].dz * lay[NUM_LAYERS-2].neu[k].actv);
            lay[NUM_LAYERS-2].neu[k].dactv = lay[NUM_LAYERS-2].neu[k].out_weights[j] * lay[NUM_LAYERS-1].neu[j].dz;
        }
            
        lay[NUM_LAYERS-1].neu[j].dbias = lay[NUM_LAYERS-1].neu[j].dz;           
    }

    // Hidden Layers
    for(i=NUM_LAYERS-2;i>0;i--)
    {
        for(j=0;j<num_neurons[i];j++)
        {
            if(lay[i].neu[j].z >= 0)
            {
                lay[i].neu[j].dz = lay[i].neu[j].dactv;
            }
            else
            {
                lay[i].neu[j].dz = 0;
            }

            for(k=0;k<num_neurons[i-1];k++)
            {
                lay[i-1].neu[k].dw[j] = lay[i].neu[j].dz * lay[i-1].neu[k].actv;    
                
                if(i>1)
                {
                    lay[i-1].neu[k].dactv = lay[i-1].neu[k].out_weights[j] * lay[i].neu[j].dz;
                }
            }

            lay[i].neu[j].dbias = lay[i].neu[j].dz;
        }
    }
}

// Test the trained network
void test_nn(void) 
{
    process_status = 'r';
    while(1)
    {
        
        get_test();
        if(num_int == 0){
        break;
        }else{
            lay[0].neu[0].actv = (int)*(string)-48;
            lay[0].neu[1].actv = (int)*(string+1)-48;
            cnum = 1;
            forward_prop();
            free(string);
        }
    }
}

// Ask for testing input
void get_test(void){

    printf("\nEnter input's number of bits(Enter 0 to exit the test):");
    scanf("%d",&num_int);
    if(num_int != 0){
        string = (char*)malloc( num_int * sizeof(char));
        printf("Enter the input:");
        scanf("%s",string);
    }
}

// Create a file to record the learning progress
void create_file(void){
    fp = fopen("train.csv","w+");
    if (fp == NULL) {
        fprintf(stderr, "File open failed.\n");
        exit(EXIT_FAILURE);
    }
    fprintf(stderr, "File open successed.\n");
    fprintf(fp, "Input1,Input2,Output,MAE,MSE\n");
    fclose(fp);

}

// Seting the file elements and allocate memory address
void set_file(){

    fileinput = (float*)malloc(2 * sizeof(float));
    fileoutput = (float*)malloc(1 * sizeof(float));
    filemae = (float*)malloc(1 * sizeof(float));
    filemse = (float*)malloc(1 * sizeof(float));

}
// Write the record into the csv file
void write_file(float* input1,float *input2,float *output,float *mae,float *mse){

    fprintf(fp, "%f,%f,%f,%f,%f\n",*input1,*input2,*output,*mae,*mse);
    free(fileinput);
    free(fileoutput);
    free(filemae);
    free(filemse);

}

// Free up all the structures
int dinit(void)
{
    free(lay);
    free(num_neurons);
    free(mae);
    free(mse);
    free(input);
    free(desired_outputs);

    return SUCCESS_DINIT;
}