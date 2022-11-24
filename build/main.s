	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/whimy/workspace/Assignment_1" "src/main.c"
	.globl	lay
	.bss
	.align 8
	.type	lay, @object
	.size	lay, 8
lay:
	.zero	8
	.globl	num_neurons
	.align 8
	.type	num_neurons, @object
	.size	num_neurons, 8
num_neurons:
	.zero	8
	.globl	alpha
	.align 4
	.type	alpha, @object
	.size	alpha, 4
alpha:
	.zero	4
	.globl	mae
	.align 8
	.type	mae, @object
	.size	mae, 8
mae:
	.zero	8
	.globl	mse
	.align 8
	.type	mse, @object
	.size	mse, 8
mse:
	.zero	8
	.globl	input
	.align 8
	.type	input, @object
	.size	input, 8
input:
	.zero	8
	.globl	desired_outputs
	.align 8
	.type	desired_outputs, @object
	.size	desired_outputs, 8
desired_outputs:
	.zero	8
	.globl	num_training_ex
	.align 4
	.type	num_training_ex, @object
	.size	num_training_ex, 4
num_training_ex:
	.zero	4
	.globl	n
	.data
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.long	1
	.globl	num_int
	.bss
	.align 4
	.type	num_int, @object
	.size	num_int, 4
num_int:
	.zero	4
	.globl	string
	.align 8
	.type	string, @object
	.size	string, 8
string:
	.zero	8
	.globl	cnum
	.align 4
	.type	cnum, @object
	.size	cnum, 4
cnum:
	.zero	4
	.globl	fp
	.align 8
	.type	fp, @object
	.size	fp, 8
fp:
	.zero	8
	.globl	fileinput
	.align 8
	.type	fileinput, @object
	.size	fileinput, 8
fileinput:
	.zero	8
	.globl	fileoutput
	.align 8
	.type	fileoutput, @object
	.size	fileoutput, 8
fileoutput:
	.zero	8
	.globl	filemae
	.align 8
	.type	filemae, @object
	.size	filemae, 8
filemae:
	.zero	8
	.globl	filemse
	.align 8
	.type	filemse, @object
	.size	filemse, 8
filemse:
	.zero	8
	.globl	process_status
	.type	process_status, @object
	.size	process_status, 1
process_status:
	.zero	1
	.globl	show_data
	.type	show_data, @object
	.size	show_data, 1
show_data:
	.zero	1
	.section	.rodata
	.align 8
.LC0:
	.string	"Setting the number of Layers in Neural Network:4"
	.align 8
.LC1:
	.string	"Setting the number of neurons in layer[1]:2 "
	.align 8
.LC2:
	.string	"Setting the number of neurons in layer[2]:4 "
	.align 8
.LC3:
	.string	"Setting the number of neurons in layer[3]:4 "
	.align 8
.LC4:
	.string	"Setting the number of neurons in layer[4]:1 "
.LC5:
	.string	"Error in Initialization..."
	.align 8
.LC6:
	.string	"Setting the learning rate: 0.15 "
	.align 8
.LC8:
	.string	"Setting the number of training examples: 4 "
.LC9:
	.string	"Error in Dinitialization..."
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.file 1 "src/main.c"
	.loc 1 38 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	.loc 1 40 5
	movl	$0, %eax
	call	create_file
	.loc 1 41 11
	movl	$0, %edi
	call	time@PLT
	.loc 1 41 5
	movl	%eax, %edi
	call	srand@PLT
	.loc 1 43 5
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 46 26
	movl	$16, %edi
	call	malloc@PLT
	.loc 1 46 17
	movq	%rax, num_neurons(%rip)
	.loc 1 47 5
	movq	num_neurons(%rip), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 50 5
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 51 5
	movq	num_neurons(%rip), %rax
	.loc 1 51 24
	movl	$2, (%rax)
	.loc 1 52 5
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 53 19
	movq	num_neurons(%rip), %rax
	addq	$4, %rax
	.loc 1 53 24
	movl	$4, (%rax)
	.loc 1 54 5
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 55 19
	movq	num_neurons(%rip), %rax
	addq	$8, %rax
	.loc 1 55 24
	movl	$4, (%rax)
	.loc 1 56 5
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 57 19
	movq	num_neurons(%rip), %rax
	addq	$12, %rax
	.loc 1 57 24
	movl	$1, (%rax)
	.loc 1 59 5
	movl	$10, %edi
	call	putchar@PLT
	.loc 1 62 8
	call	init
	.loc 1 62 7
	testl	%eax, %eax
	je	.L2
	.loc 1 64 9
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 65 9
	movl	$0, %edi
	call	exit@PLT
.L2:
	.loc 1 69 5
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 71 11
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, alpha(%rip)
	.loc 1 72 5
	movl	$10, %edi
	call	putchar@PLT
	.loc 1 76 5
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 77 21
	movl	$4, num_training_ex(%rip)
	.loc 1 78 5
	movl	$10, %edi
	call	putchar@PLT
	.loc 1 81 23
	movl	num_training_ex(%rip), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	.loc 1 81 11
	movq	%rax, input(%rip)
	.loc 1 82 10
	movl	$0, -20(%rbp)
	.loc 1 82 5
	jmp	.L3
.L4:
	.loc 1 84 50 discriminator 3
	movq	num_neurons(%rip), %rax
	movl	(%rax), %eax
	cltq
	.loc 1 84 32 discriminator 3
	salq	$2, %rax
	.loc 1 84 17 discriminator 3
	movq	input(%rip), %rcx
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rcx,%rdx), %rbx
	.loc 1 84 32 discriminator 3
	movq	%rax, %rdi
	call	malloc@PLT
	.loc 1 84 22 discriminator 3
	movq	%rax, (%rbx)
	.loc 1 82 32 discriminator 3
	addl	$1, -20(%rbp)
.L3:
	.loc 1 82 14 discriminator 1
	movl	num_training_ex(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L4
	.loc 1 88 33
	movl	num_training_ex(%rip), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	.loc 1 88 21
	movq	%rax, desired_outputs(%rip)
	.loc 1 89 10
	movl	$0, -20(%rbp)
	.loc 1 89 5
	jmp	.L5
.L6:
	.loc 1 91 60 discriminator 3
	movq	num_neurons(%rip), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	cltq
	.loc 1 91 42 discriminator 3
	salq	$2, %rax
	.loc 1 91 27 discriminator 3
	movq	desired_outputs(%rip), %rcx
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rcx,%rdx), %rbx
	.loc 1 91 42 discriminator 3
	movq	%rax, %rdi
	call	malloc@PLT
	.loc 1 91 32 discriminator 3
	movq	%rax, (%rbx)
	.loc 1 89 32 discriminator 3
	addl	$1, -20(%rbp)
.L5:
	.loc 1 89 14 discriminator 1
	movl	num_training_ex(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L6
	.loc 1 95 39
	movq	num_neurons(%rip), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	cltq
	.loc 1 95 21
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	.loc 1 95 9
	movq	%rax, mae(%rip)
	.loc 1 96 29
	movq	num_neurons(%rip), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	cltq
	.loc 1 96 5
	leaq	0(,%rax,4), %rdx
	movq	mae(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 97 39
	movq	num_neurons(%rip), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	cltq
	.loc 1 97 21
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	.loc 1 97 9
	movq	%rax, mse(%rip)
	.loc 1 98 29
	movq	num_neurons(%rip), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	cltq
	.loc 1 98 5
	leaq	0(,%rax,4), %rdx
	movq	mse(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 101 5
	call	get_inputs
	.loc 1 104 5
	call	get_desired_outputs
	.loc 1 108 5
	call	train_neural_net
	.loc 1 110 5
	call	test_nn
	.loc 1 113 8
	call	dinit
	.loc 1 113 7
	testl	%eax, %eax
	je	.L7
	.loc 1 115 9
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L7:
	.loc 1 118 12
	movl	$0, %eax
	.loc 1 119 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC10:
	.string	"Error in creating architecture..."
	.align 8
.LC11:
	.string	"Neural Network Created Successfully...\n"
	.text
	.globl	init
	.type	init, @function
init:
.LFB7:
	.loc 1 123 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 124 8
	call	create_architecture
	.loc 1 124 7
	testl	%eax, %eax
	je	.L10
	.loc 1 126 9
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 127 16
	movl	$1, %eax
	jmp	.L11
.L10:
	.loc 1 130 5
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 131 12
	movl	$0, %eax
.L11:
	.loc 1 132 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	init, .-init
	.section	.rodata
	.align 8
.LC12:
	.string	"Enter the Inputs for training example[%d]:\n"
.LC13:
	.string	"%f"
	.text
	.globl	get_inputs
	.type	get_inputs, @function
get_inputs:
.LFB8:
	.loc 1 136 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 139 14
	movl	$0, -8(%rbp)
	.loc 1 139 9
	jmp	.L13
.L16:
	.loc 1 141 13
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 143 18
	movl	$0, -4(%rbp)
	.loc 1 143 13
	jmp	.L14
.L15:
	.loc 1 145 37 discriminator 3
	movq	input(%rip), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	.loc 1 145 30 discriminator 3
	movq	(%rax), %rdx
	.loc 1 145 40 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	.loc 1 145 17 discriminator 3
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	.loc 1 143 39 discriminator 3
	addl	$1, -4(%rbp)
.L14:
	.loc 1 143 34 discriminator 1
	movq	num_neurons(%rip), %rax
	movl	(%rax), %eax
	.loc 1 143 22 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L15
	.loc 1 148 13 discriminator 2
	movl	$10, %edi
	call	putchar@PLT
	.loc 1 139 36 discriminator 2
	addl	$1, -8(%rbp)
.L13:
	.loc 1 139 18 discriminator 1
	movl	num_training_ex(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L16
	.loc 1 150 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	get_inputs, .-get_inputs
	.section	.rodata
	.align 8
.LC14:
	.string	"Enter the Desired Outputs (Labels) for training example[%d]: \n"
	.text
	.globl	get_desired_outputs
	.type	get_desired_outputs, @function
get_desired_outputs:
.LFB9:
	.loc 1 154 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 157 10
	movl	$0, -8(%rbp)
	.loc 1 157 5
	jmp	.L18
.L21:
	.loc 1 159 14
	movl	$0, -4(%rbp)
	.loc 1 159 9
	jmp	.L19
.L20:
	.loc 1 161 13 discriminator 3
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 162 43 discriminator 3
	movq	desired_outputs(%rip), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	.loc 1 162 25 discriminator 3
	movq	(%rax), %rdx
	.loc 1 162 48 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	.loc 1 162 13 discriminator 3
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	.loc 1 163 13 discriminator 3
	movl	$10, %edi
	call	putchar@PLT
	.loc 1 159 38 discriminator 3
	addl	$1, -4(%rbp)
.L19:
	.loc 1 159 30 discriminator 1
	movq	num_neurons(%rip), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	.loc 1 159 18 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L20
	.loc 1 157 32 discriminator 2
	addl	$1, -8(%rbp)
.L18:
	.loc 1 157 14 discriminator 1
	movl	num_training_ex(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L21
	.loc 1 166 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	get_desired_outputs, .-get_desired_outputs
	.section	.rodata
.LC15:
	.string	"Input: %f\n"
	.text
	.globl	feed_input
	.type	feed_input, @function
feed_input:
.LFB10:
	.loc 1 170 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 172 10
	movl	$0, -4(%rbp)
	.loc 1 172 5
	jmp	.L23
.L25:
	.loc 1 174 39
	movq	input(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	.loc 1 174 32
	movq	(%rax), %rdx
	.loc 1 174 42
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	.loc 1 174 12
	movq	lay(%rip), %rax
	.loc 1 174 15
	movq	8(%rax), %rsi
	.loc 1 174 19
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	.loc 1 174 30
	movss	(%rcx), %xmm0
	.loc 1 174 28
	movss	%xmm0, (%rax)
	.loc 1 176 22
	movzbl	show_data(%rip), %eax
	.loc 1 176 11
	cmpb	$121, %al
	jne	.L24
	.loc 1 177 37
	movq	lay(%rip), %rax
	.loc 1 177 40
	movq	8(%rax), %rcx
	.loc 1 177 44
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 177 47
	movss	(%rax), %xmm0
	.loc 1 177 13
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
.L24:
	.loc 1 179 29 discriminator 2
	movq	lay(%rip), %rax
	.loc 1 179 32 discriminator 2
	movq	8(%rax), %rcx
	.loc 1 179 36 discriminator 2
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rcx,%rax), %rdx
	.loc 1 179 20 discriminator 2
	movq	fileinput(%rip), %rcx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rcx, %rax
	.loc 1 179 39 discriminator 2
	movss	(%rdx), %xmm0
	.loc 1 179 24 discriminator 2
	movss	%xmm0, (%rax)
	.loc 1 172 31 discriminator 2
	addl	$1, -4(%rbp)
.L23:
	.loc 1 172 26 discriminator 1
	movq	num_neurons(%rip), %rax
	movl	(%rax), %eax
	.loc 1 172 14 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L25
	.loc 1 181 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	feed_input, .-feed_input
	.section	.rodata
.LC16:
	.string	"Created Layer: %d\n"
	.align 8
.LC17:
	.string	"Number of Neurons in Layer %d: %d\n"
	.align 8
.LC18:
	.string	"Neuron %d in Layer %d created\n"
.LC19:
	.string	"Error Initilizing weights..."
	.text
	.globl	create_architecture
	.type	create_architecture, @function
create_architecture:
.LFB11:
	.loc 1 185 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	.loc 1 185 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 186 9
	movl	$0, -32(%rbp)
	.loc 1 186 13
	movl	$0, -28(%rbp)
	.loc 1 187 20
	movl	$64, %edi
	call	malloc@PLT
	.loc 1 187 9
	movq	%rax, lay(%rip)
	.loc 1 189 10
	movl	$0, -32(%rbp)
	.loc 1 189 5
	jmp	.L27
.L31:
	.loc 1 191 42
	movq	num_neurons(%rip), %rdx
	movl	-32(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 1 191 18
	movl	(%rax), %eax
	.loc 1 191 12
	movq	lay(%rip), %rcx
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	leaq	(%rcx,%rdx), %rbx
	.loc 1 191 18
	movl	%eax, %edi
	call	create_layer@PLT
	movl	%eax, %ecx
	movq	%rdx, %rax
	movl	%ecx, (%rbx)
	movq	%rax, 8(%rbx)
	.loc 1 192 37
	movq	num_neurons(%rip), %rdx
	movl	-32(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 1 192 12
	movq	lay(%rip), %rcx
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rcx, %rdx
	.loc 1 192 37
	movl	(%rax), %eax
	.loc 1 192 24
	movl	%eax, (%rdx)
	.loc 1 193 9
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 194 62
	movq	lay(%rip), %rdx
	movl	-32(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 194 9
	movl	(%rax), %eax
	movl	-32(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	%eax, %edx
	movl	%ecx, %esi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 196 14
	movl	$0, -28(%rbp)
	.loc 1 196 9
	jmp	.L28
.L30:
	.loc 1 198 15
	cmpl	$2, -32(%rbp)
	jg	.L29
	.loc 1 200 58
	movq	num_neurons(%rip), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	$1, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 1 200 33
	movl	(%rax), %edx
	.loc 1 200 20
	movq	lay(%rip), %rcx
	movl	-32(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 200 23
	movq	8(%rax), %rsi
	.loc 1 200 27
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	leaq	(%rsi,%rax), %rbx
	.loc 1 200 33
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	create_neuron@PLT
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rbx)
	movq	%rdx, 40(%rbx)
.L29:
	.loc 1 203 13 discriminator 2
	movl	-32(%rbp), %eax
	leal	1(%rax), %edx
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 196 35 discriminator 2
	addl	$1, -28(%rbp)
.L28:
	.loc 1 196 30 discriminator 1
	movq	num_neurons(%rip), %rdx
	movl	-32(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 1 196 18 discriminator 1
	cmpl	%eax, -28(%rbp)
	jl	.L30
	.loc 1 205 9 discriminator 2
	movl	$10, %edi
	call	putchar@PLT
	.loc 1 189 18 discriminator 2
	addl	$1, -32(%rbp)
.L27:
	.loc 1 189 14 discriminator 1
	cmpl	$3, -32(%rbp)
	jle	.L31
	.loc 1 208 5
	movl	$10, %edi
	call	putchar@PLT
	.loc 1 211 8
	call	initialize_weights
	.loc 1 211 7
	testl	%eax, %eax
	je	.L32
	.loc 1 213 9
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 214 16
	movl	$1, %eax
	jmp	.L33
.L32:
	.loc 1 217 12
	movl	$0, %eax
.L33:
	.loc 1 218 1
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L34
	call	__stack_chk_fail@PLT
.L34:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	create_architecture, .-create_architecture
	.section	.rodata
	.align 8
.LC20:
	.string	"No layers in Neural Network..."
.LC21:
	.string	"Initializing weights..."
.LC23:
	.string	"%d:w[%d][%d]: %f\n"
	.text
	.globl	initialize_weights
	.type	initialize_weights, @function
initialize_weights:
.LFB12:
	.loc 1 222 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 225 12
	movq	lay(%rip), %rax
	.loc 1 225 7
	testq	%rax, %rax
	jne	.L36
	.loc 1 227 9
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 228 16
	movl	$1, %eax
	jmp	.L37
.L36:
	.loc 1 231 5
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 233 10
	movl	$0, -12(%rbp)
	.loc 1 233 5
	jmp	.L38
.L44:
	.loc 1 236 14
	movl	$0, -8(%rbp)
	.loc 1 236 9
	jmp	.L39
.L43:
	.loc 1 238 18
	movl	$0, -4(%rbp)
	.loc 1 238 13
	jmp	.L40
.L41:
	.loc 1 241 57 discriminator 3
	call	rand@PLT
	.loc 1 241 49 discriminator 3
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	.loc 1 241 64 discriminator 3
	movsd	.LC22(%rip), %xmm1
	divsd	%xmm1, %xmm0
	.loc 1 241 20 discriminator 3
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 241 23 discriminator 3
	movq	8(%rax), %rcx
	.loc 1 241 27 discriminator 3
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 241 30 discriminator 3
	movq	8(%rax), %rdx
	.loc 1 241 42 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 1 241 64 discriminator 3
	cvtsd2ss	%xmm0, %xmm0
	.loc 1 241 46 discriminator 3
	movss	%xmm0, (%rax)
	.loc 1 242 55 discriminator 3
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 242 58 discriminator 3
	movq	8(%rax), %rcx
	.loc 1 242 62 discriminator 3
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 242 65 discriminator 3
	movq	8(%rax), %rdx
	.loc 1 242 77 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 242 17 discriminator 3
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movq	%xmm2, %rsi
	movl	-8(%rbp), %ecx
	movl	-12(%rbp), %edx
	movl	-4(%rbp), %eax
	movq	%rsi, %xmm0
	movl	%eax, %esi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	.loc 1 243 20 discriminator 3
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 243 23 discriminator 3
	movq	8(%rax), %rcx
	.loc 1 243 27 discriminator 3
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 243 30 discriminator 3
	movq	32(%rax), %rdx
	.loc 1 243 33 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 1 243 37 discriminator 3
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	.loc 1 238 41 discriminator 3
	addl	$1, -4(%rbp)
.L40:
	.loc 1 238 34 discriminator 1
	movq	num_neurons(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$1, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 1 238 22 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L41
	.loc 1 246 15
	cmpl	$0, -12(%rbp)
	jle	.L42
	.loc 1 248 47
	call	rand@PLT
	.loc 1 248 39
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	.loc 1 248 54
	movsd	.LC22(%rip), %xmm1
	divsd	%xmm1, %xmm0
	.loc 1 248 20
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 248 23
	movq	8(%rax), %rcx
	.loc 1 248 27
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 248 54
	cvtsd2ss	%xmm0, %xmm0
	.loc 1 248 36
	movss	%xmm0, 16(%rax)
.L42:
	.loc 1 236 35 discriminator 2
	addl	$1, -8(%rbp)
.L39:
	.loc 1 236 30 discriminator 1
	movq	num_neurons(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 1 236 18 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L43
	.loc 1 233 21 discriminator 2
	addl	$1, -12(%rbp)
.L38:
	.loc 1 233 14 discriminator 1
	cmpl	$2, -12(%rbp)
	jle	.L44
	.loc 1 252 5
	movl	$10, %edi
	call	putchar@PLT
	.loc 1 254 11
	movl	$0, -8(%rbp)
	.loc 1 254 5
	jmp	.L45
.L46:
	.loc 1 256 42 discriminator 3
	call	rand@PLT
	.loc 1 256 34 discriminator 3
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	.loc 1 256 49 discriminator 3
	movsd	.LC22(%rip), %xmm1
	divsd	%xmm1, %xmm0
	.loc 1 256 12 discriminator 3
	movq	lay(%rip), %rax
	addq	$48, %rax
	.loc 1 256 18 discriminator 3
	movq	8(%rax), %rcx
	.loc 1 256 22 discriminator 3
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 256 49 discriminator 3
	cvtsd2ss	%xmm0, %xmm0
	.loc 1 256 31 discriminator 3
	movss	%xmm0, 16(%rax)
	.loc 1 254 37 discriminator 3
	addl	$1, -8(%rbp)
.L45:
	.loc 1 254 28 discriminator 1
	movq	num_neurons(%rip), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	.loc 1 254 16 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L46
	.loc 1 259 12
	movl	$0, %eax
.L37:
	.loc 1 260 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	initialize_weights, .-initialize_weights
	.section	.rodata
	.align 8
.LC25:
	.string	"Would you like to see the detailed process?[y/n]:"
.LC26:
	.string	" %c"
.LC27:
	.string	"Command %c is undefined.\n"
.LC28:
	.string	"a+"
.LC29:
	.string	"train.csv"
.LC30:
	.string	"fopen() failed.\n"
.LC31:
	.string	"Training completed!"
	.align 8
.LC32:
	.string	"You can see the detailed training process in a csv file named 'train.csv'"
	.align 8
.LC33:
	.string	"\nNow you can enter some examples to test-->"
	.text
	.globl	train_neural_net
	.type	train_neural_net, @function
train_neural_net:
.LFB13:
	.loc 1 264 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 265 20
	movb	$116, process_status(%rip)
	.loc 1 266 5
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 267 5
	leaq	show_data(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	.loc 1 269 18
	movzbl	show_data(%rip), %eax
	.loc 1 269 7
	cmpb	$121, %al
	je	.L48
	.loc 1 269 38 discriminator 1
	movzbl	show_data(%rip), %eax
	.loc 1 269 25 discriminator 1
	cmpb	$110, %al
	je	.L48
	.loc 1 270 9
	movzbl	show_data(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L48:
	.loc 1 273 9
	movl	$0, -4(%rbp)
	.loc 1 275 10
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	.loc 1 275 8
	movq	%rax, fp(%rip)
	.loc 1 276 12
	movq	fp(%rip), %rax
	.loc 1 276 8
	testq	%rax, %rax
	jne	.L49
	.loc 1 277 9
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$16, %edx
	movl	$1, %esi
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 278 9
	movl	$1, %edi
	call	exit@PLT
.L49:
	.loc 1 284 11
	movl	$0, -4(%rbp)
	.loc 1 284 5
	jmp	.L50
.L53:
	.loc 1 286 14
	movl	$0, -8(%rbp)
	.loc 1 286 9
	jmp	.L51
.L52:
	.loc 1 288 13 discriminator 3
	movl	$0, %eax
	call	set_file
	.loc 1 289 13 discriminator 3
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	feed_input
	.loc 1 290 13 discriminator 3
	call	forward_prop
	.loc 1 291 13 discriminator 3
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	compute_cost
	.loc 1 292 13 discriminator 3
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	back_prop
	.loc 1 293 13 discriminator 3
	movq	filemse(%rip), %rdi
	movq	filemae(%rip), %rcx
	movq	fileoutput(%rip), %rdx
	movq	fileinput(%rip), %rax
	leaq	4(%rax), %rsi
	movq	fileinput(%rip), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	write_file
	.loc 1 294 13 discriminator 3
	call	update_weights
	.loc 1 286 36 discriminator 3
	addl	$1, -8(%rbp)
.L51:
	.loc 1 286 18 discriminator 1
	movl	num_training_ex(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L52
	.loc 1 284 25 discriminator 2
	addl	$1, -4(%rbp)
.L50:
	.loc 1 284 16 discriminator 1
	cmpl	$19999, -4(%rbp)
	jle	.L53
	.loc 1 298 5
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 299 5
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 300 5
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 301 5
	movq	fp(%rip), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 302 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	train_neural_net, .-train_neural_net
	.globl	update_weights
	.type	update_weights, @function
update_weights:
.LFB14:
	.loc 1 307 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 310 10
	movl	$0, -12(%rbp)
	.loc 1 310 5
	jmp	.L55
.L60:
	.loc 1 312 14
	movl	$0, -8(%rbp)
	.loc 1 312 9
	jmp	.L56
.L59:
	.loc 1 314 18
	movl	$0, -4(%rbp)
	.loc 1 314 13
	jmp	.L57
.L58:
	.loc 1 317 52 discriminator 3
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 317 55 discriminator 3
	movq	8(%rax), %rcx
	.loc 1 317 59 discriminator 3
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 317 62 discriminator 3
	movq	8(%rax), %rdx
	.loc 1 317 74 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	.loc 1 317 93 discriminator 3
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 317 96 discriminator 3
	movq	8(%rax), %rcx
	.loc 1 317 100 discriminator 3
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 317 103 discriminator 3
	movq	32(%rax), %rdx
	.loc 1 317 106 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	.loc 1 317 88 discriminator 3
	movss	alpha(%rip), %xmm1
	mulss	%xmm2, %xmm1
	.loc 1 317 20 discriminator 3
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 317 23 discriminator 3
	movq	8(%rax), %rcx
	.loc 1 317 27 discriminator 3
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 317 30 discriminator 3
	movq	8(%rax), %rdx
	.loc 1 317 42 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 1 317 79 discriminator 3
	subss	%xmm1, %xmm0
	.loc 1 317 46 discriminator 3
	movss	%xmm0, (%rax)
	.loc 1 314 41 discriminator 3
	addl	$1, -4(%rbp)
.L57:
	.loc 1 314 34 discriminator 1
	movq	num_neurons(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	$1, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 1 314 22 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L58
	.loc 1 321 37 discriminator 2
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 321 40 discriminator 2
	movq	8(%rax), %rcx
	.loc 1 321 44 discriminator 2
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 321 47 discriminator 2
	movss	16(%rax), %xmm0
	.loc 1 321 67 discriminator 2
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 321 70 discriminator 2
	movq	8(%rax), %rcx
	.loc 1 321 74 discriminator 2
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 321 77 discriminator 2
	movss	40(%rax), %xmm2
	.loc 1 321 62 discriminator 2
	movss	alpha(%rip), %xmm1
	mulss	%xmm2, %xmm1
	.loc 1 321 16 discriminator 2
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 321 19 discriminator 2
	movq	8(%rax), %rcx
	.loc 1 321 23 discriminator 2
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 321 53 discriminator 2
	subss	%xmm1, %xmm0
	.loc 1 321 32 discriminator 2
	movss	%xmm0, 16(%rax)
	.loc 1 312 35 discriminator 2
	addl	$1, -8(%rbp)
.L56:
	.loc 1 312 30 discriminator 1
	movq	num_neurons(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 1 312 18 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L59
	.loc 1 310 21 discriminator 2
	addl	$1, -12(%rbp)
.L55:
	.loc 1 310 14 discriminator 1
	cmpl	$2, -12(%rbp)
	jle	.L60
	.loc 1 324 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	update_weights, .-update_weights
	.section	.rodata
.LC36:
	.string	"Output: %d\n"
	.text
	.globl	forward_prop
	.type	forward_prop, @function
forward_prop:
.LFB15:
	.loc 1 328 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 330 10
	movl	$1, -12(%rbp)
	.loc 1 330 5
	jmp	.L62
.L75:
	.loc 1 332 14
	movl	$0, -8(%rbp)
	.loc 1 332 9
	jmp	.L63
.L74:
	.loc 1 334 34
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 334 37
	movq	8(%rax), %rcx
	.loc 1 334 41
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rax, %rcx
	.loc 1 334 16
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 334 19
	movq	8(%rax), %rsi
	.loc 1 334 23
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	.loc 1 334 44
	movss	16(%rcx), %xmm0
	.loc 1 334 29
	movss	%xmm0, 20(%rax)
	.loc 1 336 18
	movl	$0, -4(%rbp)
	.loc 1 336 13
	jmp	.L64
.L65:
	.loc 1 338 38 discriminator 3
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 338 41 discriminator 3
	movq	8(%rax), %rcx
	.loc 1 338 45 discriminator 3
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 338 48 discriminator 3
	movss	20(%rax), %xmm1
	.loc 1 338 58 discriminator 3
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	subq	$16, %rax
	addq	%rdx, %rax
	.loc 1 338 63 discriminator 3
	movq	8(%rax), %rcx
	.loc 1 338 67 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 338 70 discriminator 3
	movq	8(%rax), %rdx
	.loc 1 338 82 discriminator 3
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	.loc 1 338 92 discriminator 3
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	subq	$16, %rax
	addq	%rdx, %rax
	.loc 1 338 97 discriminator 3
	movq	8(%rax), %rcx
	.loc 1 338 101 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 338 104 discriminator 3
	movss	(%rax), %xmm0
	.loc 1 338 86 discriminator 3
	mulss	%xmm2, %xmm0
	.loc 1 338 20 discriminator 3
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 338 23 discriminator 3
	movq	8(%rax), %rcx
	.loc 1 338 27 discriminator 3
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 338 51 discriminator 3
	addss	%xmm1, %xmm0
	.loc 1 338 33 discriminator 3
	movss	%xmm0, 20(%rax)
	.loc 1 336 41 discriminator 3
	addl	$1, -4(%rbp)
.L64:
	.loc 1 336 34 discriminator 1
	movq	num_neurons(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 1 336 22 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L65
	.loc 1 342 15
	cmpl	$2, -12(%rbp)
	jg	.L66
	.loc 1 344 24
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 344 27
	movq	8(%rax), %rcx
	.loc 1 344 31
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 344 34
	movss	20(%rax), %xmm1
	.loc 1 344 19
	pxor	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L77
	.loc 1 346 24
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 346 27
	movq	8(%rax), %rcx
	.loc 1 346 31
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 346 40
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	jmp	.L69
.L77:
	.loc 1 351 45
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 351 48
	movq	8(%rax), %rcx
	.loc 1 351 52
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rax, %rcx
	.loc 1 351 24
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 351 27
	movq	8(%rax), %rsi
	.loc 1 351 31
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	.loc 1 351 55
	movss	20(%rcx), %xmm0
	.loc 1 351 40
	movss	%xmm0, (%rax)
	jmp	.L69
.L66:
	.loc 1 358 51
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 358 54
	movq	8(%rax), %rcx
	.loc 1 358 58
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 358 61
	movss	20(%rax), %xmm0
	.loc 1 358 47
	movss	.LC34(%rip), %xmm1
	xorps	%xmm1, %xmm0
	.loc 1 358 43
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	call	exp@PLT
	.loc 1 358 42
	movsd	.LC35(%rip), %xmm1
	addsd	%xmm0, %xmm1
	.loc 1 358 39
	movsd	.LC35(%rip), %xmm0
	divsd	%xmm1, %xmm0
	.loc 1 358 20
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 358 23
	movq	8(%rax), %rcx
	.loc 1 358 27
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 358 39
	cvtsd2ss	%xmm0, %xmm0
	.loc 1 358 36
	movss	%xmm0, (%rax)
	.loc 1 360 24
	movl	cnum(%rip), %eax
	leal	1(%rax), %edx
	.loc 1 360 27
	movl	num_int(%rip), %eax
	.loc 1 360 19
	cmpl	%eax, %edx
	jge	.L70
	.loc 1 361 56
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 361 59
	movq	8(%rax), %rax
	.loc 1 361 66
	movss	(%rax), %xmm0
	.loc 1 361 47
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	call	round@PLT
	.loc 1 361 42
	cvttsd2sil	%xmm0, %edx
	.loc 1 361 24
	movq	lay(%rip), %rax
	.loc 1 361 27
	movq	8(%rax), %rax
	.loc 1 361 40
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, (%rax)
	.loc 1 362 56
	movq	string(%rip), %rdx
	movl	cnum(%rip), %eax
	cltq
	addq	$1, %rax
	addq	%rdx, %rax
	.loc 1 362 47
	movzbl	(%rax), %eax
	.loc 1 362 42
	movsbl	%al, %eax
	.loc 1 362 68
	leal	-48(%rax), %edx
	.loc 1 362 24
	movq	lay(%rip), %rax
	.loc 1 362 27
	movq	8(%rax), %rax
	.loc 1 362 31
	addq	$48, %rax
	.loc 1 362 40
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, (%rax)
	.loc 1 363 25
	movl	cnum(%rip), %eax
	addl	$1, %eax
	movl	%eax, cnum(%rip)
	.loc 1 364 21
	call	forward_prop
	jmp	.L69
.L70:
	.loc 1 366 39
	movzbl	process_status(%rip), %eax
	.loc 1 366 23
	cmpb	$114, %al
	je	.L71
	.loc 1 366 59 discriminator 1
	movzbl	show_data(%rip), %eax
	.loc 1 366 46 discriminator 1
	cmpb	$121, %al
	jne	.L72
.L71:
	.loc 1 367 62
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 367 65
	movq	8(%rax), %rcx
	.loc 1 367 69
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 367 72
	movss	(%rax), %xmm0
	.loc 1 367 53
	pxor	%xmm5, %xmm5
	cvtss2sd	%xmm0, %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	call	round@PLT
	.loc 1 367 25
	cvttsd2sil	%xmm0, %eax
	movl	%eax, %esi
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L72:
	.loc 1 369 49
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 369 52
	movq	8(%rax), %rcx
	.loc 1 369 56
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 369 59
	movss	(%rax), %xmm0
	.loc 1 369 40
	pxor	%xmm6, %xmm6
	cvtss2sd	%xmm0, %xmm6
	movq	%xmm6, %rax
	movq	%rax, %xmm0
	call	round@PLT
	.loc 1 369 35
	cvttsd2sil	%xmm0, %edx
	.loc 1 369 21
	movq	fileoutput(%rip), %rax
	.loc 1 369 33
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, (%rax)
	.loc 1 370 21
	jmp	.L73
.L69:
	.loc 1 332 35 discriminator 2
	addl	$1, -8(%rbp)
.L63:
	.loc 1 332 30 discriminator 1
	movq	num_neurons(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 1 332 18 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L74
.L73:
	.loc 1 330 18 discriminator 2
	addl	$1, -12(%rbp)
.L62:
	.loc 1 330 14 discriminator 1
	cmpl	$3, -12(%rbp)
	jle	.L75
	.loc 1 377 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	forward_prop, .-forward_prop
	.section	.rodata
.LC38:
	.string	"MAE: %f\n"
.LC39:
	.string	"MSE: %f\n"
	.text
	.globl	compute_cost
	.type	compute_cost, @function
compute_cost:
.LFB16:
	.loc 1 381 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	.loc 1 383 11
	pxor	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	.loc 1 384 11
	pxor	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	.loc 1 385 11
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	.loc 1 386 11
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	.loc 1 388 10
	movl	$0, -20(%rbp)
	.loc 1 388 5
	jmp	.L79
.L80:
	.loc 1 390 46 discriminator 3
	movq	desired_outputs(%rip), %rdx
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	.loc 1 390 29 discriminator 3
	movq	(%rax), %rdx
	.loc 1 390 49 discriminator 3
	movl	-20(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 1 390 27 discriminator 3
	movss	(%rax), %xmm0
	.loc 1 390 58 discriminator 3
	movq	lay(%rip), %rax
	addq	$48, %rax
	.loc 1 390 64 discriminator 3
	movq	8(%rax), %rcx
	.loc 1 390 68 discriminator 3
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 390 71 discriminator 3
	movss	(%rax), %xmm1
	.loc 1 390 53 discriminator 3
	subss	%xmm1, %xmm0
	.loc 1 390 15 discriminator 3
	movq	mae(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 1 390 22 discriminator 3
	movss	.LC37(%rip), %xmm1
	andps	%xmm1, %xmm0
	.loc 1 390 20 discriminator 3
	movss	%xmm0, (%rax)
	.loc 1 391 29 discriminator 3
	movq	mae(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 1 391 23 discriminator 3
	movss	(%rax), %xmm1
	.loc 1 391 44 discriminator 3
	movq	mae(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 1 391 38 discriminator 3
	movss	(%rax), %xmm0
	.loc 1 391 15 discriminator 3
	movq	mse(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 1 391 35 discriminator 3
	mulss	%xmm1, %xmm0
	.loc 1 391 20 discriminator 3
	movss	%xmm0, (%rax)
	.loc 1 392 24 discriminator 3
	movq	mae(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 1 392 18 discriminator 3
	movss	(%rax), %xmm0
	.loc 1 392 15 discriminator 3
	movss	-16(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	.loc 1 393 24 discriminator 3
	movq	mse(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 1 393 18 discriminator 3
	movss	(%rax), %xmm0
	.loc 1 393 15 discriminator 3
	movss	-12(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	.loc 1 388 34 discriminator 3
	addl	$1, -20(%rbp)
.L79:
	.loc 1 388 26 discriminator 1
	movq	num_neurons(%rip), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	.loc 1 388 14 discriminator 1
	cmpl	%eax, -20(%rbp)
	jl	.L80
	.loc 1 397 24
	movss	-8(%rbp), %xmm0
	addss	-16(%rbp), %xmm0
	.loc 1 397 32
	movl	n(%rip), %eax
	pxor	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	.loc 1 397 13
	divss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	.loc 1 398 24
	movss	-4(%rbp), %xmm0
	addss	-12(%rbp), %xmm0
	.loc 1 398 32
	movl	n(%rip), %eax
	pxor	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	.loc 1 398 13
	divss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	.loc 1 399 5
	movq	filemae(%rip), %rax
	.loc 1 399 14
	movss	-8(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 1 400 5
	movq	filemse(%rip), %rax
	.loc 1 400 14
	movss	-4(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 1 401 18
	movzbl	show_data(%rip), %eax
	.loc 1 401 7
	cmpb	$121, %al
	jne	.L81
	.loc 1 402 9
	pxor	%xmm2, %xmm2
	cvtss2sd	-8(%rbp), %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	.loc 1 403 9
	pxor	%xmm3, %xmm3
	cvtss2sd	-4(%rbp), %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	leaq	.LC39(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	.loc 1 404 9
	movl	$10, %edi
	call	putchar@PLT
.L81:
	.loc 1 406 6
	movl	n(%rip), %eax
	addl	$1, %eax
	movl	%eax, n(%rip)
	.loc 1 407 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	compute_cost, .-compute_cost
	.globl	back_prop
	.type	back_prop, @function
back_prop:
.LFB17:
	.loc 1 411 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	.loc 1 415 10
	movl	$0, -8(%rbp)
	.loc 1 415 5
	jmp	.L83
.L86:
	.loc 1 417 35
	movq	lay(%rip), %rax
	addq	$48, %rax
	.loc 1 417 41
	movq	8(%rax), %rcx
	.loc 1 417 45
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 417 48
	movss	(%rax), %xmm0
	.loc 1 417 76
	movq	desired_outputs(%rip), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	.loc 1 417 59
	movq	(%rax), %rdx
	.loc 1 417 79
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 1 417 57
	movss	(%rax), %xmm2
	.loc 1 417 54
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	.loc 1 417 91
	movq	lay(%rip), %rax
	addq	$48, %rax
	.loc 1 417 97
	movq	8(%rax), %rcx
	.loc 1 417 101
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 417 104
	movss	(%rax), %xmm0
	.loc 1 417 85
	mulss	%xmm0, %xmm1
	.loc 1 417 120
	movq	lay(%rip), %rax
	addq	$48, %rax
	.loc 1 417 126
	movq	8(%rax), %rcx
	.loc 1 417 130
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 417 133
	movss	(%rax), %xmm2
	.loc 1 417 115
	movss	.LC40(%rip), %xmm0
	subss	%xmm2, %xmm0
	.loc 1 417 12
	movq	lay(%rip), %rax
	addq	$48, %rax
	.loc 1 417 18
	movq	8(%rax), %rcx
	.loc 1 417 22
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 417 111
	mulss	%xmm1, %xmm0
	.loc 1 417 29
	movss	%xmm0, 44(%rax)
	.loc 1 419 14
	movl	$0, -4(%rbp)
	.loc 1 419 9
	jmp	.L84
.L85:
	.loc 1 421 42 discriminator 3
	movq	lay(%rip), %rax
	addq	$48, %rax
	.loc 1 421 48 discriminator 3
	movq	8(%rax), %rcx
	.loc 1 421 52 discriminator 3
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 421 55 discriminator 3
	movss	44(%rax), %xmm1
	.loc 1 421 64 discriminator 3
	movq	lay(%rip), %rax
	addq	$32, %rax
	.loc 1 421 70 discriminator 3
	movq	8(%rax), %rcx
	.loc 1 421 74 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 421 77 discriminator 3
	movss	(%rax), %xmm0
	.loc 1 421 16 discriminator 3
	movq	lay(%rip), %rax
	addq	$32, %rax
	.loc 1 421 22 discriminator 3
	movq	8(%rax), %rcx
	.loc 1 421 26 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 421 29 discriminator 3
	movq	32(%rax), %rdx
	.loc 1 421 32 discriminator 3
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 1 421 59 discriminator 3
	mulss	%xmm1, %xmm0
	.loc 1 421 36 discriminator 3
	movss	%xmm0, (%rax)
	.loc 1 422 41 discriminator 3
	movq	lay(%rip), %rax
	addq	$32, %rax
	.loc 1 422 47 discriminator 3
	movq	8(%rax), %rcx
	.loc 1 422 51 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 422 54 discriminator 3
	movq	8(%rax), %rdx
	.loc 1 422 66 discriminator 3
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	.loc 1 422 75 discriminator 3
	movq	lay(%rip), %rax
	addq	$48, %rax
	.loc 1 422 81 discriminator 3
	movq	8(%rax), %rcx
	.loc 1 422 85 discriminator 3
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 422 88 discriminator 3
	movss	44(%rax), %xmm0
	.loc 1 422 16 discriminator 3
	movq	lay(%rip), %rax
	addq	$32, %rax
	.loc 1 422 22 discriminator 3
	movq	8(%rax), %rcx
	.loc 1 422 26 discriminator 3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 422 70 discriminator 3
	mulss	%xmm1, %xmm0
	.loc 1 422 36 discriminator 3
	movss	%xmm0, 24(%rax)
	.loc 1 419 38 discriminator 3
	addl	$1, -4(%rbp)
.L84:
	.loc 1 419 30 discriminator 1
	movq	num_neurons(%rip), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	.loc 1 419 18 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L85
	.loc 1 425 37 discriminator 2
	movq	lay(%rip), %rax
	addq	$48, %rax
	.loc 1 425 43 discriminator 2
	movq	8(%rax), %rcx
	.loc 1 425 47 discriminator 2
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rax, %rcx
	.loc 1 425 12 discriminator 2
	movq	lay(%rip), %rax
	addq	$48, %rax
	.loc 1 425 18 discriminator 2
	movq	8(%rax), %rsi
	.loc 1 425 22 discriminator 2
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	.loc 1 425 50 discriminator 2
	movss	44(%rcx), %xmm0
	.loc 1 425 32 discriminator 2
	movss	%xmm0, 40(%rax)
	.loc 1 415 34 discriminator 2
	addl	$1, -8(%rbp)
.L83:
	.loc 1 415 26 discriminator 1
	movq	num_neurons(%rip), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	.loc 1 415 14 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L86
	.loc 1 429 10
	movl	$2, -12(%rbp)
	.loc 1 429 5
	jmp	.L87
.L96:
	.loc 1 431 14
	movl	$0, -8(%rbp)
	.loc 1 431 9
	jmp	.L88
.L95:
	.loc 1 433 19
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 433 22
	movq	8(%rax), %rcx
	.loc 1 433 26
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 433 29
	movss	20(%rax), %xmm0
	.loc 1 433 15
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jb	.L98
	.loc 1 435 39
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 435 42
	movq	8(%rax), %rcx
	.loc 1 435 46
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rax, %rcx
	.loc 1 435 20
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 435 23
	movq	8(%rax), %rsi
	.loc 1 435 27
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	.loc 1 435 49
	movss	24(%rcx), %xmm0
	.loc 1 435 34
	movss	%xmm0, 44(%rax)
	jmp	.L91
.L98:
	.loc 1 439 20
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 439 23
	movq	8(%rax), %rcx
	.loc 1 439 27
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 439 34
	pxor	%xmm0, %xmm0
	movss	%xmm0, 44(%rax)
.L91:
	.loc 1 442 18
	movl	$0, -4(%rbp)
	.loc 1 442 13
	jmp	.L92
.L94:
	.loc 1 444 44
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 444 47
	movq	8(%rax), %rcx
	.loc 1 444 51
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 444 54
	movss	44(%rax), %xmm1
	.loc 1 444 63
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	subq	$16, %rax
	addq	%rdx, %rax
	.loc 1 444 68
	movq	8(%rax), %rcx
	.loc 1 444 72
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 444 75
	movss	(%rax), %xmm0
	.loc 1 444 20
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	subq	$16, %rax
	addq	%rdx, %rax
	.loc 1 444 25
	movq	8(%rax), %rcx
	.loc 1 444 29
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 444 32
	movq	32(%rax), %rdx
	.loc 1 444 35
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	.loc 1 444 58
	mulss	%xmm1, %xmm0
	.loc 1 444 39
	movss	%xmm0, (%rax)
	.loc 1 446 19
	cmpl	$1, -12(%rbp)
	jle	.L93
	.loc 1 448 48
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	subq	$16, %rax
	addq	%rdx, %rax
	.loc 1 448 53
	movq	8(%rax), %rcx
	.loc 1 448 57
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 448 60
	movq	8(%rax), %rdx
	.loc 1 448 72
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	.loc 1 448 81
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 448 84
	movq	8(%rax), %rcx
	.loc 1 448 88
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 448 91
	movss	44(%rax), %xmm0
	.loc 1 448 24
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	subq	$16, %rax
	addq	%rdx, %rax
	.loc 1 448 29
	movq	8(%rax), %rcx
	.loc 1 448 33
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	.loc 1 448 76
	mulss	%xmm1, %xmm0
	.loc 1 448 43
	movss	%xmm0, 24(%rax)
.L93:
	.loc 1 442 41 discriminator 2
	addl	$1, -4(%rbp)
.L92:
	.loc 1 442 34 discriminator 1
	movq	num_neurons(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 1 442 22 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L94
	.loc 1 452 38 discriminator 2
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 452 41 discriminator 2
	movq	8(%rax), %rcx
	.loc 1 452 45 discriminator 2
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rax, %rcx
	.loc 1 452 16 discriminator 2
	movq	lay(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rdx, %rax
	.loc 1 452 19 discriminator 2
	movq	8(%rax), %rsi
	.loc 1 452 23 discriminator 2
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	.loc 1 452 48 discriminator 2
	movss	44(%rcx), %xmm0
	.loc 1 452 33 discriminator 2
	movss	%xmm0, 40(%rax)
	.loc 1 431 35 discriminator 2
	addl	$1, -8(%rbp)
.L88:
	.loc 1 431 30 discriminator 1
	movq	num_neurons(%rip), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 1 431 18 discriminator 1
	cmpl	%eax, -8(%rbp)
	jl	.L95
	.loc 1 429 21 discriminator 2
	subl	$1, -12(%rbp)
.L87:
	.loc 1 429 17 discriminator 1
	cmpl	$0, -12(%rbp)
	jg	.L96
	.loc 1 455 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	back_prop, .-back_prop
	.globl	test_nn
	.type	test_nn, @function
test_nn:
.LFB18:
	.loc 1 459 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 460 20
	movb	$114, process_status(%rip)
.L102:
	.loc 1 464 9
	movl	$0, %eax
	call	get_test
	.loc 1 465 20
	movl	num_int(%rip), %eax
	.loc 1 465 11
	testl	%eax, %eax
	je	.L104
	.loc 1 468 39
	movq	string(%rip), %rax
	movzbl	(%rax), %eax
	.loc 1 468 34
	movsbl	%al, %eax
	.loc 1 468 48
	leal	-48(%rax), %edx
	.loc 1 468 16
	movq	lay(%rip), %rax
	.loc 1 468 19
	movq	8(%rax), %rax
	.loc 1 468 32
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, (%rax)
	.loc 1 469 47
	movq	string(%rip), %rax
	addq	$1, %rax
	.loc 1 469 39
	movzbl	(%rax), %eax
	.loc 1 469 34
	movsbl	%al, %eax
	.loc 1 469 50
	leal	-48(%rax), %edx
	.loc 1 469 16
	movq	lay(%rip), %rax
	.loc 1 469 19
	movq	8(%rax), %rax
	.loc 1 469 23
	addq	$48, %rax
	.loc 1 469 32
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, (%rax)
	.loc 1 470 18
	movl	$1, cnum(%rip)
	.loc 1 471 13
	call	forward_prop
	.loc 1 472 13
	movq	string(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 464 9
	jmp	.L102
.L104:
	.loc 1 466 9
	nop
	.loc 1 475 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	test_nn, .-test_nn
	.section	.rodata
	.align 8
.LC41:
	.string	"\nEnter input's number of bits(Enter 0 to exit the test):"
.LC42:
	.string	"%d"
.LC43:
	.string	"Enter the input:"
.LC44:
	.string	"%s"
	.text
	.globl	get_test
	.type	get_test, @function
get_test:
.LFB19:
	.loc 1 478 20
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 480 5
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 481 5
	leaq	num_int(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	.loc 1 482 16
	movl	num_int(%rip), %eax
	.loc 1 482 7
	testl	%eax, %eax
	je	.L107
	.loc 1 483 25
	movl	num_int(%rip), %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	.loc 1 483 16
	movq	%rax, string(%rip)
	.loc 1 484 9
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 485 9
	movq	string(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
.L107:
	.loc 1 487 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	get_test, .-get_test
	.section	.rodata
.LC45:
	.string	"w+"
.LC46:
	.string	"File open failed.\n"
.LC47:
	.string	"File open successed.\n"
.LC48:
	.string	"Input1,Input2,Output,MAE,MSE\n"
	.text
	.globl	create_file
	.type	create_file, @function
create_file:
.LFB20:
	.loc 1 490 23
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 491 10
	leaq	.LC45(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	.loc 1 491 8
	movq	%rax, fp(%rip)
	.loc 1 492 12
	movq	fp(%rip), %rax
	.loc 1 492 8
	testq	%rax, %rax
	jne	.L109
	.loc 1 493 9
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$18, %edx
	movl	$1, %esi
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 494 9
	movl	$1, %edi
	call	exit@PLT
.L109:
	.loc 1 496 5
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	movl	$1, %esi
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 497 5
	movq	fp(%rip), %rax
	movq	%rax, %rcx
	movl	$29, %edx
	movl	$1, %esi
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 1 498 5
	movq	fp(%rip), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 500 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	create_file, .-create_file
	.globl	set_file
	.type	set_file, @function
set_file:
.LFB21:
	.loc 1 503 16
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 505 25
	movl	$8, %edi
	call	malloc@PLT
	.loc 1 505 15
	movq	%rax, fileinput(%rip)
	.loc 1 506 26
	movl	$4, %edi
	call	malloc@PLT
	.loc 1 506 16
	movq	%rax, fileoutput(%rip)
	.loc 1 507 23
	movl	$4, %edi
	call	malloc@PLT
	.loc 1 507 13
	movq	%rax, filemae(%rip)
	.loc 1 508 23
	movl	$4, %edi
	call	malloc@PLT
	.loc 1 508 13
	movq	%rax, filemse(%rip)
	.loc 1 510 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	set_file, .-set_file
	.section	.rodata
.LC49:
	.string	"%f,%f,%f,%f,%f\n"
	.text
	.globl	write_file
	.type	write_file, @function
write_file:
.LFB22:
	.loc 1 512 81
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	.loc 1 514 65
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm0
	.loc 1 514 5
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	.loc 1 514 60
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm0
	.loc 1 514 5
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	.loc 1 514 52
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	.loc 1 514 5
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	.loc 1 514 44
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0
	.loc 1 514 5
	cvtss2sd	%xmm0, %xmm0
	.loc 1 514 36
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm4
	.loc 1 514 5
	pxor	%xmm5, %xmm5
	cvtss2sd	%xmm4, %xmm5
	movq	%xmm5, %rdx
	movq	fp(%rip), %rax
	movapd	%xmm3, %xmm4
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	leaq	.LC49(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$5, %eax
	call	fprintf@PLT
	.loc 1 515 5
	movq	fileinput(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 516 5
	movq	fileoutput(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 517 5
	movq	filemae(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 518 5
	movq	filemse(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 520 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	write_file, .-write_file
	.globl	dinit
	.type	dinit, @function
dinit:
.LFB23:
	.loc 1 524 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 525 5
	movq	lay(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 526 5
	movq	num_neurons(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 527 5
	movq	mae(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 528 5
	movq	mse(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 529 5
	movq	input(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 530 5
	movq	desired_outputs(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 532 12
	movl	$0, %eax
	.loc 1 533 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	dinit, .-dinit
	.section	.rodata
	.align 4
.LC7:
	.long	1041865114
	.align 8
.LC22:
	.long	-4194304
	.long	1105199103
	.align 16
.LC34:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 8
.LC35:
	.long	0
	.long	1072693248
	.align 16
.LC37:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC40:
	.long	1065353216
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 7 "inc/neuron.h"
	.file 8 "inc/layer.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.file 11 "/usr/include/stdlib.h"
	.file 12 "/usr/include/string.h"
	.file 13 "/usr/include/time.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa6c
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1c
	.long	.LASF115
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x8
	.long	.LASF9
	.byte	0x2
	.byte	0xd1
	.byte	0x1b
	.long	0x3a
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x1d
	.byte	0x8
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x1e
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x8
	.long	.LASF10
	.byte	0x3
	.byte	0x98
	.byte	0x12
	.long	0x6d
	.uleb128 0x8
	.long	.LASF11
	.byte	0x3
	.byte	0x99
	.byte	0x12
	.long	0x6d
	.uleb128 0x8
	.long	.LASF12
	.byte	0x3
	.byte	0xa0
	.byte	0x12
	.long	0x6d
	.uleb128 0x3
	.long	0x9d
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x1f
	.long	0x9d
	.uleb128 0x10
	.long	.LASF52
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x230
	.uleb128 0x1
	.long	.LASF14
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x66
	.byte	0
	.uleb128 0x1
	.long	.LASF15
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x98
	.byte	0x8
	.uleb128 0x1
	.long	.LASF16
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x98
	.byte	0x10
	.uleb128 0x1
	.long	.LASF17
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x98
	.byte	0x18
	.uleb128 0x1
	.long	.LASF18
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x98
	.byte	0x20
	.uleb128 0x1
	.long	.LASF19
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x98
	.byte	0x28
	.uleb128 0x1
	.long	.LASF20
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x98
	.byte	0x30
	.uleb128 0x1
	.long	.LASF21
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x98
	.byte	0x38
	.uleb128 0x1
	.long	.LASF22
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x98
	.byte	0x40
	.uleb128 0x1
	.long	.LASF23
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x98
	.byte	0x48
	.uleb128 0x1
	.long	.LASF24
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x98
	.byte	0x50
	.uleb128 0x1
	.long	.LASF25
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x98
	.byte	0x58
	.uleb128 0x1
	.long	.LASF26
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x249
	.byte	0x60
	.uleb128 0x1
	.long	.LASF27
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x24e
	.byte	0x68
	.uleb128 0x1
	.long	.LASF28
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x66
	.byte	0x70
	.uleb128 0x1
	.long	.LASF29
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x66
	.byte	0x74
	.uleb128 0x1
	.long	.LASF30
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x74
	.byte	0x78
	.uleb128 0x1
	.long	.LASF31
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x51
	.byte	0x80
	.uleb128 0x1
	.long	.LASF32
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x58
	.byte	0x82
	.uleb128 0x1
	.long	.LASF33
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x253
	.byte	0x83
	.uleb128 0x1
	.long	.LASF34
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x263
	.byte	0x88
	.uleb128 0x1
	.long	.LASF35
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x80
	.byte	0x90
	.uleb128 0x1
	.long	.LASF36
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x26d
	.byte	0x98
	.uleb128 0x1
	.long	.LASF37
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x277
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF38
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x24e
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF39
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x48
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF40
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2e
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF41
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x66
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF42
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x27c
	.byte	0xc4
	.byte	0
	.uleb128 0x8
	.long	.LASF43
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xa9
	.uleb128 0x20
	.long	.LASF116
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF44
	.uleb128 0x3
	.long	0x244
	.uleb128 0x3
	.long	0xa9
	.uleb128 0x16
	.long	0x9d
	.long	0x263
	.uleb128 0x17
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x23c
	.uleb128 0x11
	.long	.LASF45
	.uleb128 0x3
	.long	0x268
	.uleb128 0x11
	.long	.LASF46
	.uleb128 0x3
	.long	0x272
	.uleb128 0x16
	.long	0x9d
	.long	0x28c
	.uleb128 0x17
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.long	0x230
	.uleb128 0x18
	.long	0x28c
	.uleb128 0x21
	.long	.LASF63
	.byte	0x9
	.byte	0x91
	.byte	0xe
	.long	0x28c
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x8
	.long	.LASF48
	.byte	0x6
	.byte	0xa
	.byte	0x12
	.long	0x8c
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF49
	.uleb128 0x3
	.long	0xa4
	.uleb128 0x18
	.long	0x2bc
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF50
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.long	.LASF51
	.uleb128 0x10
	.long	.LASF53
	.byte	0x30
	.byte	0x7
	.byte	0xa
	.byte	0x10
	.long	0x346
	.uleb128 0x1
	.long	.LASF54
	.byte	0x7
	.byte	0xc
	.byte	0x8
	.long	0x2c6
	.byte	0
	.uleb128 0x1
	.long	.LASF55
	.byte	0x7
	.byte	0xd
	.byte	0x9
	.long	0x346
	.byte	0x8
	.uleb128 0x1
	.long	.LASF56
	.byte	0x7
	.byte	0xe
	.byte	0x8
	.long	0x2c6
	.byte	0x10
	.uleb128 0xc
	.string	"z"
	.byte	0x7
	.byte	0xf
	.byte	0x8
	.long	0x2c6
	.byte	0x14
	.uleb128 0x1
	.long	.LASF57
	.byte	0x7
	.byte	0x12
	.byte	0x8
	.long	0x2c6
	.byte	0x18
	.uleb128 0xc
	.string	"dw"
	.byte	0x7
	.byte	0x13
	.byte	0x9
	.long	0x346
	.byte	0x20
	.uleb128 0x1
	.long	.LASF58
	.byte	0x7
	.byte	0x14
	.byte	0x8
	.long	0x2c6
	.byte	0x28
	.uleb128 0xc
	.string	"dz"
	.byte	0x7
	.byte	0x15
	.byte	0x8
	.long	0x2c6
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.long	0x2c6
	.uleb128 0x8
	.long	.LASF59
	.byte	0x7
	.byte	0x17
	.byte	0x3
	.long	0x2d4
	.uleb128 0x10
	.long	.LASF60
	.byte	0x10
	.byte	0x8
	.byte	0x7
	.byte	0x10
	.long	0x37f
	.uleb128 0x1
	.long	.LASF61
	.byte	0x8
	.byte	0x9
	.byte	0x6
	.long	0x66
	.byte	0
	.uleb128 0xc
	.string	"neu"
	.byte	0x8
	.byte	0xa
	.byte	0x13
	.long	0x37f
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	0x2d4
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0xb
	.byte	0x3
	.long	0x357
	.uleb128 0x9
	.string	"lay"
	.byte	0x10
	.byte	0x8
	.long	0x3a5
	.uleb128 0x9
	.byte	0x3
	.quad	lay
	.uleb128 0x3
	.long	0x384
	.uleb128 0x4
	.long	.LASF64
	.byte	0x11
	.byte	0x6
	.long	0x3bf
	.uleb128 0x9
	.byte	0x3
	.quad	num_neurons
	.uleb128 0x3
	.long	0x66
	.uleb128 0x4
	.long	.LASF65
	.byte	0x12
	.byte	0x7
	.long	0x2c6
	.uleb128 0x9
	.byte	0x3
	.quad	alpha
	.uleb128 0x9
	.string	"mae"
	.byte	0x13
	.byte	0x8
	.long	0x346
	.uleb128 0x9
	.byte	0x3
	.quad	mae
	.uleb128 0x9
	.string	"mse"
	.byte	0x14
	.byte	0x8
	.long	0x346
	.uleb128 0x9
	.byte	0x3
	.quad	mse
	.uleb128 0x4
	.long	.LASF66
	.byte	0x15
	.byte	0x9
	.long	0x418
	.uleb128 0x9
	.byte	0x3
	.quad	input
	.uleb128 0x3
	.long	0x346
	.uleb128 0x4
	.long	.LASF67
	.byte	0x16
	.byte	0x9
	.long	0x418
	.uleb128 0x9
	.byte	0x3
	.quad	desired_outputs
	.uleb128 0x4
	.long	.LASF68
	.byte	0x17
	.byte	0x5
	.long	0x66
	.uleb128 0x9
	.byte	0x3
	.quad	num_training_ex
	.uleb128 0x9
	.string	"n"
	.byte	0x18
	.byte	0x5
	.long	0x66
	.uleb128 0x9
	.byte	0x3
	.quad	n
	.uleb128 0x4
	.long	.LASF69
	.byte	0x19
	.byte	0x5
	.long	0x66
	.uleb128 0x9
	.byte	0x3
	.quad	num_int
	.uleb128 0x4
	.long	.LASF70
	.byte	0x1a
	.byte	0x7
	.long	0x98
	.uleb128 0x9
	.byte	0x3
	.quad	string
	.uleb128 0x4
	.long	.LASF71
	.byte	0x1b
	.byte	0x5
	.long	0x66
	.uleb128 0x9
	.byte	0x3
	.quad	cnum
	.uleb128 0x9
	.string	"fp"
	.byte	0x1c
	.byte	0x7
	.long	0x28c
	.uleb128 0x9
	.byte	0x3
	.quad	fp
	.uleb128 0x4
	.long	.LASF72
	.byte	0x1d
	.byte	0x8
	.long	0x346
	.uleb128 0x9
	.byte	0x3
	.quad	fileinput
	.uleb128 0x4
	.long	.LASF73
	.byte	0x1e
	.byte	0x8
	.long	0x346
	.uleb128 0x9
	.byte	0x3
	.quad	fileoutput
	.uleb128 0x4
	.long	.LASF74
	.byte	0x1f
	.byte	0x8
	.long	0x346
	.uleb128 0x9
	.byte	0x3
	.quad	filemae
	.uleb128 0x4
	.long	.LASF75
	.byte	0x20
	.byte	0x8
	.long	0x346
	.uleb128 0x9
	.byte	0x3
	.quad	filemse
	.uleb128 0x4
	.long	.LASF76
	.byte	0x21
	.byte	0x6
	.long	0x9d
	.uleb128 0x9
	.byte	0x3
	.quad	process_status
	.uleb128 0x4
	.long	.LASF77
	.byte	0x22
	.byte	0x6
	.long	0x9d
	.uleb128 0x9
	.byte	0x3
	.quad	show_data
	.uleb128 0xa
	.long	.LASF78
	.byte	0x9
	.value	0x15e
	.byte	0xc
	.long	0x66
	.long	0x548
	.uleb128 0x2
	.long	0x291
	.uleb128 0x2
	.long	0x2c1
	.uleb128 0x12
	.byte	0
	.uleb128 0x19
	.long	.LASF88
	.value	0x22b
	.long	0x559
	.uleb128 0x2
	.long	0x48
	.byte	0
	.uleb128 0xa
	.long	.LASF79
	.byte	0xa
	.value	0x12d
	.byte	0xf
	.long	0x2cd
	.long	0x570
	.uleb128 0x2
	.long	0x2cd
	.byte	0
	.uleb128 0x22
	.string	"exp"
	.byte	0xa
	.byte	0x5f
	.byte	0x10
	.long	0x2cd
	.long	0x586
	.uleb128 0x2
	.long	0x2cd
	.byte	0
	.uleb128 0xb
	.long	.LASF80
	.byte	0x9
	.byte	0xb2
	.byte	0xc
	.long	0x66
	.long	0x59c
	.uleb128 0x2
	.long	0x28c
	.byte	0
	.uleb128 0xa
	.long	.LASF81
	.byte	0x9
	.value	0x102
	.byte	0xe
	.long	0x28c
	.long	0x5b8
	.uleb128 0x2
	.long	0x2c1
	.uleb128 0x2
	.long	0x2c1
	.byte	0
	.uleb128 0x23
	.long	.LASF117
	.byte	0xb
	.value	0x1c6
	.byte	0xc
	.long	0x66
	.uleb128 0xb
	.long	.LASF82
	.byte	0x7
	.byte	0x1b
	.byte	0x8
	.long	0x34b
	.long	0x5db
	.uleb128 0x2
	.long	0x66
	.byte	0
	.uleb128 0xb
	.long	.LASF83
	.byte	0x8
	.byte	0xf
	.byte	0x7
	.long	0x384
	.long	0x5f1
	.uleb128 0x2
	.long	0x66
	.byte	0
	.uleb128 0x24
	.long	.LASF118
	.byte	0x9
	.value	0x1b5
	.byte	0xc
	.long	.LASF119
	.long	0x66
	.long	0x60d
	.uleb128 0x2
	.long	0x2bc
	.uleb128 0x12
	.byte	0
	.uleb128 0xa
	.long	.LASF84
	.byte	0x9
	.value	0x164
	.byte	0xc
	.long	0x66
	.long	0x625
	.uleb128 0x2
	.long	0x2bc
	.uleb128 0x12
	.byte	0
	.uleb128 0x25
	.long	.LASF85
	.byte	0xb
	.value	0x270
	.byte	0xd
	.long	0x638
	.uleb128 0x2
	.long	0x66
	.byte	0
	.uleb128 0xb
	.long	.LASF86
	.byte	0xc
	.byte	0x3d
	.byte	0xe
	.long	0x48
	.long	0x658
	.uleb128 0x2
	.long	0x48
	.uleb128 0x2
	.long	0x66
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0xa
	.long	.LASF87
	.byte	0xb
	.value	0x21c
	.byte	0xe
	.long	0x48
	.long	0x66f
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0x19
	.long	.LASF89
	.value	0x1c8
	.long	0x680
	.uleb128 0x2
	.long	0x41
	.byte	0
	.uleb128 0xb
	.long	.LASF90
	.byte	0xd
	.byte	0x4c
	.byte	0xf
	.long	0x2a9
	.long	0x696
	.uleb128 0x2
	.long	0x696
	.byte	0
	.uleb128 0x3
	.long	0x2a9
	.uleb128 0x26
	.long	.LASF112
	.byte	0x1
	.value	0x20b
	.byte	0x5
	.long	0x66
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.long	.LASF97
	.value	0x200
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x71d
	.uleb128 0x13
	.long	.LASF91
	.byte	0x18
	.long	0x346
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF92
	.byte	0x26
	.long	0x346
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.long	.LASF93
	.byte	0x34
	.long	0x346
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"mae"
	.value	0x200
	.byte	0x42
	.long	0x346
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"mse"
	.value	0x200
	.byte	0x4d
	.long	0x346
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x27
	.long	.LASF120
	.byte	0x1
	.value	0x1f7
	.byte	0x6
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.long	.LASF94
	.value	0x1ea
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.long	.LASF95
	.value	0x1de
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.long	.LASF96
	.value	0x1ca
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.long	.LASF98
	.value	0x19a
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x7d5
	.uleb128 0xe
	.string	"p"
	.value	0x19a
	.byte	0x14
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"i"
	.value	0x19c
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"j"
	.value	0x19c
	.byte	0xb
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"k"
	.value	0x19c
	.byte	0xd
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.long	.LASF99
	.value	0x17c
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x845
	.uleb128 0xe
	.string	"i"
	.value	0x17c
	.byte	0x17
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"j"
	.value	0x17e
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.long	.LASF100
	.value	0x17f
	.long	0x2c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.long	.LASF101
	.value	0x180
	.long	0x2c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.long	.LASF102
	.value	0x181
	.long	0x2c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.long	.LASF103
	.value	0x182
	.long	0x2c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.long	.LASF104
	.value	0x147
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x88a
	.uleb128 0x6
	.string	"i"
	.value	0x149
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"j"
	.value	0x149
	.byte	0xb
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"k"
	.value	0x149
	.byte	0xd
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.long	.LASF105
	.value	0x132
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x8cf
	.uleb128 0x6
	.string	"i"
	.value	0x134
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"j"
	.value	0x134
	.byte	0xb
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"k"
	.value	0x134
	.byte	0xd
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.long	.LASF106
	.value	0x107
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x908
	.uleb128 0x6
	.string	"i"
	.value	0x110
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"it"
	.value	0x111
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.long	.LASF107
	.byte	0xdd
	.long	0x66
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x94d
	.uleb128 0x7
	.string	"i"
	.byte	0xdf
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"j"
	.byte	0xdf
	.byte	0xb
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"k"
	.byte	0xdf
	.byte	0xd
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.long	.LASF108
	.byte	0xb8
	.long	0x66
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x986
	.uleb128 0x7
	.string	"i"
	.byte	0xba
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"j"
	.byte	0xba
	.byte	0xd
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x15
	.long	.LASF109
	.byte	0xa9
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x9bc
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0xa9
	.byte	0x15
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"j"
	.byte	0xab
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF110
	.byte	0x99
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x9f1
	.uleb128 0x7
	.string	"i"
	.byte	0x9b
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"j"
	.byte	0x9b
	.byte	0xb
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF111
	.byte	0x87
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xa26
	.uleb128 0x7
	.string	"i"
	.byte	0x89
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"j"
	.byte	0x89
	.byte	0xb
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.long	.LASF113
	.byte	0x1
	.byte	0x7a
	.byte	0x5
	.long	0x66
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF114
	.byte	0x1
	.byte	0x25
	.byte	0x5
	.long	0x66
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.string	"i"
	.byte	0x27
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 512
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF62:
	.string	"layer"
.LASF33:
	.string	"_shortbuf"
.LASF117:
	.string	"rand"
.LASF116:
	.string	"_IO_lock_t"
.LASF66:
	.string	"input"
.LASF63:
	.string	"stderr"
.LASF22:
	.string	"_IO_buf_end"
.LASF57:
	.string	"dactv"
.LASF20:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF38:
	.string	"_freeres_list"
.LASF14:
	.string	"_flags"
.LASF71:
	.string	"cnum"
.LASF76:
	.string	"process_status"
.LASF60:
	.string	"layer_t"
.LASF64:
	.string	"num_neurons"
.LASF26:
	.string	"_markers"
.LASF103:
	.string	"sum_mse"
.LASF119:
	.string	"__isoc99_scanf"
.LASF96:
	.string	"test_nn"
.LASF108:
	.string	"create_architecture"
.LASF25:
	.string	"_IO_save_end"
.LASF105:
	.string	"update_weights"
.LASF50:
	.string	"float"
.LASF45:
	.string	"_IO_codecvt"
.LASF87:
	.string	"malloc"
.LASF56:
	.string	"bias"
.LASF49:
	.string	"long long unsigned int"
.LASF94:
	.string	"create_file"
.LASF24:
	.string	"_IO_backup_base"
.LASF35:
	.string	"_offset"
.LASF82:
	.string	"create_neuron"
.LASF74:
	.string	"filemae"
.LASF90:
	.string	"time"
.LASF78:
	.string	"fprintf"
.LASF28:
	.string	"_fileno"
.LASF112:
	.string	"dinit"
.LASF120:
	.string	"set_file"
.LASF9:
	.string	"size_t"
.LASF89:
	.string	"srand"
.LASF93:
	.string	"output"
.LASF17:
	.string	"_IO_read_base"
.LASF88:
	.string	"free"
.LASF104:
	.string	"forward_prop"
.LASF70:
	.string	"string"
.LASF67:
	.string	"desired_outputs"
.LASF109:
	.string	"feed_input"
.LASF91:
	.string	"input1"
.LASF69:
	.string	"num_int"
.LASF13:
	.string	"char"
.LASF55:
	.string	"out_weights"
.LASF41:
	.string	"_mode"
.LASF44:
	.string	"_IO_marker"
.LASF15:
	.string	"_IO_read_ptr"
.LASF85:
	.string	"exit"
.LASF98:
	.string	"back_prop"
.LASF48:
	.string	"time_t"
.LASF75:
	.string	"filemse"
.LASF18:
	.string	"_IO_write_base"
.LASF47:
	.string	"long long int"
.LASF115:
	.string	"GNU C17 11.2.0 -mtune=generic -march=x86-64 -g -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF84:
	.string	"printf"
.LASF23:
	.string	"_IO_save_base"
.LASF77:
	.string	"show_data"
.LASF54:
	.string	"actv"
.LASF86:
	.string	"memset"
.LASF107:
	.string	"initialize_weights"
.LASF39:
	.string	"_freeres_buf"
.LASF110:
	.string	"get_desired_outputs"
.LASF40:
	.string	"__pad5"
.LASF81:
	.string	"fopen"
.LASF32:
	.string	"_vtable_offset"
.LASF92:
	.string	"input2"
.LASF99:
	.string	"compute_cost"
.LASF16:
	.string	"_IO_read_end"
.LASF118:
	.string	"scanf"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"long int"
.LASF73:
	.string	"fileoutput"
.LASF46:
	.string	"_IO_wide_data"
.LASF111:
	.string	"get_inputs"
.LASF106:
	.string	"train_neural_net"
.LASF80:
	.string	"fclose"
.LASF97:
	.string	"write_file"
.LASF58:
	.string	"dbias"
.LASF37:
	.string	"_wide_data"
.LASF113:
	.string	"init"
.LASF34:
	.string	"_lock"
.LASF2:
	.string	"long unsigned int"
.LASF53:
	.string	"neuron_t"
.LASF30:
	.string	"_old_offset"
.LASF61:
	.string	"num_neu"
.LASF52:
	.string	"_IO_FILE"
.LASF65:
	.string	"alpha"
.LASF4:
	.string	"unsigned char"
.LASF19:
	.string	"_IO_write_ptr"
.LASF12:
	.string	"__time_t"
.LASF79:
	.string	"round"
.LASF36:
	.string	"_codecvt"
.LASF10:
	.string	"__off_t"
.LASF83:
	.string	"create_layer"
.LASF6:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF72:
	.string	"fileinput"
.LASF100:
	.string	"t_mae"
.LASF114:
	.string	"main"
.LASF68:
	.string	"num_training_ex"
.LASF102:
	.string	"sum_mae"
.LASF51:
	.string	"double"
.LASF59:
	.string	"neuron"
.LASF27:
	.string	"_chain"
.LASF43:
	.string	"FILE"
.LASF29:
	.string	"_flags2"
.LASF101:
	.string	"t_mse"
.LASF31:
	.string	"_cur_column"
.LASF95:
	.string	"get_test"
.LASF11:
	.string	"__off64_t"
.LASF42:
	.string	"_unused2"
.LASF21:
	.string	"_IO_buf_base"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/whimy/workspace/Assignment_1"
.LASF0:
	.string	"src/main.c"
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
