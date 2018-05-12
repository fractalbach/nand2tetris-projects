// init
// ---------------

// set SP = 256
@256
D=A
@SP
M=D

// set LCL = 300
@300
D=A
@LCL
M=D

// ---------------


// push constant 123
@123
D=A
@SP // push d
M=M+1
A=M-1
M=D




// GOAL: RAM[302] = 123

// 1. saves pointer to segment[index] in R13.
// 2. pops value off stack, saves to D.
// 3. 

// push local 2
@2 	// (not needed for n = 0)
D=A  	// (not needed for n = 0)
@LCL 	// Goto local n
D=D+M   // D += address pointed to by LCL
	// D += offset designated by n.

@R13	// saves pointer to local n
M=D	
@SP 	// pop d
AM=M-1	 
D=M	
M=0	

@R13 	// goto R13 where pointer is saved.
A=M 	// goto RAM[pointer]
M=D	// Save D to RAM[pointer]

 // End of Program.
(END)
@END
0; JMP	

