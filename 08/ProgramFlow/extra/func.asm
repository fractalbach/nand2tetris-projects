// Example of a function
// written directly in assembly
// to practice the "call" and "return".

// initialize
@256 	// stack pointer.
D=A
@SP
M=D

@300 	// local pointer.
D=A
@LCL
M=D

@400 	// THIS pointer.
D=A
@THIS
M=D

@500 	// THAT pointer.
D=A
@THAT
M=D

@600 	// argument pointer.
D=A
@ARG
M=D

// some args should already be pushed onto
// the stack
// push constant 3; pop arg1;
// push constant 4; pop arg2;
@3   
D=A
@254
M=D

@4
D=A
@255
M=D



// ~~~~~~~~~~~~~~~~  Calling a function ~~~~~~~~~~~~~~~~~~~~~~~~~~

@RETURN.ADD.1   // push return address to stack.
D = A 		// save the return address into D.
@SP		// push value from D to stack.
A = M 	
M = D

@LCL		// push local pointer to stack.
D = M
@SP
M = M + 1
A = M - 1
M = D

@ARG		// push arg pointer to stack.
D = M
@SP
M = M + 1
A = M - 1
M=D

@THIS 		// push this pointer to stack.
D = M
@SP
M=M+1
A=M-1
M=D

@THAT 		// push that to stack.
D=M
@SP
M=M+1
A=M-1
M=D
	
// reposition arg pointer.  ARG = SP - nArgs - 5
@7 		// <-- this number is determined by vm translator (5 + nArgs)
D=A		
@SP		// set D = SP - nArgs - 5
D = M - D 
@ARG		// write new value into arg.
M = D

// reposition local.  LCL = SP
@SP
D = M
@LCL
M = D

// goto f.  Jumps to the actual function.
@FUNCTION.ADD  	// unconditional jump.  it's a goto.
0; JMP 

(RETURN.ADDRESS.1)  // <-- location is created with a unique label.






// ...
// more code would presumably be here.
// this is the rest of the program.
// ....

(END)		// end
@END		// of
0; JMP 		// program.
// =======================================================





// ~~~~~~~~~~~~~  Returning a function ~~~~~~~~~~~~~~~~~~~~~~~~~~

(RETURN.FUNCTION.ADD.1)  // <-- label is generated by vm-translator

@LCL		// save local in a variable called "frame"
D=M
@FRAME
M=D
@5		// put return addr in a variable called "ret".  RET = *(FRAME - 5)
A=D-A		// Since D is still equal to FRAME, you can calculate (Frame - 5) here.
D=M 		// Save the value stored in RAM[frame - 5].
@RET		// Load that value into RET.
M=D		

@SP 		// *ARG = pop()
AM=M-1		
D=M
@ARG		// follow arg pointer,
A=M
M=D 		// set *ARG <- value stored in D 

@ARG 		// restore original stack pointer
A=A+1
D=M
@SP
M=D

@FRAME   	// Move through the frame, restoring values.
AM=M-1 		// frame--
D=M
@THAT 		// restore that.
M=D
@FRAME 		// frame--
AM=M-1
D=M
@THIS 		// restore this.
M=D
@FRAME		// frame--
AM=M-1
D=M
@ARG 		// restore arg.
M=D
@FRAME		// frame --
AM=M-1
D=M
@LCL 		// restore local.
M=D

@RET		// jumps to the return-address location.
0; JMP 		


//~~~~~~~~~~~~~~ Declaring a function ~~~~~~~~~~~~~~~~~~~~~~
// function add
// takes 2 arguments, let's just say it needs 1 local variable.

(FUNCTION.ADD) 	// declare a label
@SP 		// push constant 0.    <-- this would be repeated for each local var.
M=M+1
A=M-1
M=0

// ~~~~~~~~~~~~~ The implmementation of the function ~~~~~~~~
// This is independent of the vm translator,
// we normally don't care.  It's here just for the 
// sake of completion.
// Adds arg0 and arg1 together. 

@ARG 	  	// Adds arg0 + arg1.
D=M		// sets D <- value in Arg 0.
A=A+1  		// moves 1 address down to Arg 1.
D=D+M		// sets D <- D + value in Arg 1.

@SP		// pushes return value to stack.
M=M+1
A=M-1
M=D

@RETURN.FUNCTION.ADD.1	// this is the "ret" commmand.


