(FUNCTION.simplefunction.test)
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0

// push LCL 0
@0
D=A
@LCL
A=M+D
D=M
@SP // push d
M=M+1
A=M-1
M=D

// push LCL 1
@1
D=A
@LCL
A=M+D
D=M
@SP // push d
M=M+1
A=M-1
M=D

// add
@SP // pop d
AM=M-1
D=M
A=A-1
M=M+D

// bitwise NOT
@SP
A=M-1
M=!M

// push ARG 0
@0
D=A
@ARG
A=M+D
D=M
@SP // push d
M=M+1
A=M-1
M=D

// add
@SP // pop d
AM=M-1
D=M
A=A-1
M=M+D

// push ARG 1
@1
D=A
@ARG
A=M+D
D=M
@SP // push d
M=M+1
A=M-1
M=D

// subtract
@SP // pop d
AM=M-1
D=M
A=A-1
M=M-D

// return
@LCL 	// set FRAME = LCL
D=M
@FRAME  
M=D	
// @5		// set RET = *(FRAME - 5)
// D=D-A 	// set D = (FRAME - 5)
// A=D 	// Follow pointer *(FRAME-5)
// D=M 	// set D = *(FRAME-5)
// @RET 	// set RET = *(FRAME - 5)	
// M=D
@SP // pop d
AM=M-1
D=M
@ARG 	// places return value in the right spot.
A=M		// goto *(ARG)
M=D 	// set *ARG = pop()
@ARG	// restores stack pointer.  SP = ARG + 1
D=M
@SP
M=D+1
@FRAME
AM=M-1
D=M
@THAT 	// restore that.
M=D
@FRAME
AM=M-1
D=M	
@THIS	// restore this.
M=D
@FRAME
AM=M-1
D=M
@ARG	// restore arg.
M=D
@FRAME
AM=M-1
D=M
@LCL 	// restore local.
M=D
@FRAME
AM=M-1
D=M
A=D
0; JMP

