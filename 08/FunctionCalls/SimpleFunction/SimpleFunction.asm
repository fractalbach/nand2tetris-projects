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
@SP // pop d
AM=M-1
D=M
M=0
@ARG 	// places return value in the right spot.
A=M
M=D
@ARG	// restores stack pointer.  SP <- ARG + 1
D=M
@SP
M=D+1
@LCL 	// init frame pointer
D=M
@FRAME
M=D
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
A=D 	// jumps to return address.
0;JMP

 // End of Program.
(END)
@END
0; JMP

