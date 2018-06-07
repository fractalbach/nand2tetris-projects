// bootstrap code
// ----------------------------------
// set stack pointer to 256
@256
D=A
@SP
M=D
 // call sys.init 0 
@RETURN.sys.init.1 	// push return address.
D=A
@SP // push d
M=M+1
A=M-1
M=D
@LCL		// push local
D=M
@SP // push d
M=M+1
A=M-1
M=D
@ARG		// push arg
D=M
@SP // push d
M=M+1
A=M-1
M=D
@THIS		// push this
D=M
@SP // push d
M=M+1
A=M-1
M=D
@5	 		// set D = (SP - (nArgs + 5))
D=A
@SP 	
D=M-D
@ARG 		// set ARG = D
M=D
@SP 		// set LCL = SP
D=M
@LCL
M=D
@FUNCTION.sys.init 	// goto f
0; JMP
(RETURN.sys.init.1)

// ----------------------------------

// ~~~~ SimpleFunction.vm ~~~~
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
M=0
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
M=0
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
M=0
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
M=0
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

