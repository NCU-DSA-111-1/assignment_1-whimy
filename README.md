# XOR_In_Neural_Network

## Solving xor problem by using neural network

* Neural Network
* XOR function
* Usage of dynamic memory allocation

-------------------------------------
# Neural Network in C

This is assignment 1 of Data Structure.

Building Neural Network to solve XOR problem

> There are some instrucion that the user need to enter them manually 
> 
> Which will be display by code block above

## Usage
1. Set the number of layer to 4 (Input,Hidden*2,Output)
2. Set the number of neuron for each layer (2,4,4,1)
3. Set the learning rate to 0.15
4. Set the number of training example set to 4
5. Enter the traning set 
```
# Example
Enter the Inputs for training example[0]:0 0
Enter the Inputs for training example[1]:0 1
Enter the Inputs for training example[2]:1 0
Enter the Inputs for training example[3]:1 1
```
6. Enter desired output for each training example
```
# Example
Enter the Desired Outputs (Labels) for training example[0]:0
Enter the Desired Outputs (Labels) for training example[1]:1
Enter the Desired Outputs (Labels) for training example[2]:1
Enter the Desired Outputs (Labels) for training example[3]:0
```
7. Training the neural network 
   
   (You can decide whether to see the process by enter y or n)
```
#Example
Would you like to see the detailed process?[y/n]:y
Input: 1.000000
Input: 1.000000
Output: 0
MAE: 0.000000
MSE: 0.000000
...
```

   (It usually takes some time)

8. Write each training data into a csv file named "train.csv"
9. Start Testing (Exit the test by entering 0):
        
   * Enter how much bits is your testing input: n

   * Enter the n-bits-input
```
# Example
Enter input's number of bits(Enter 0 to exit the test):4
Enter the input:0011
Output:0
```  
# How to run

```sh
$make
$./bin/run
```
# Reference
[Code reference](https://medium.com/analytics-vidhya/building-neural-network-framework-in-c-using-backpropagation-8ad589a0752d) 

> Building-neural-network-framework-in-c-using-backpropagation

[Concept of Neural Network](https://towardsdatascience.com/simple-neural-network-implementation-in-c-663f51447547)

> Simple neural network implementation in C

[Concept of Neural Network](https://medium.com/datathings/neural-networks-and-backpropagation-explained-in-a-simple-way-f540a3611f5e)

> Neural networks and back-propagation explained in a simple way

[Concept of Neural Network](https://towardsdatascience.com/activation-functions-neural-networks-1cbd9f8d91d6?gi=2041018f7b46)

> Activation Functions in Neural Networks
