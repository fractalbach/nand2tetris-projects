// push constant 3030
@3030
D=A
@SP // push d
M=M+1
A=M-1
M=D

// pop pointer 0
@SP // pop d
AM=M-1
D=M
M=0
@THIS
M=D

// push constant 3040
@3040
D=A
@SP // push d
M=M+1
A=M-1
M=D

// pop pointer 1
@SP // pop d
AM=M-1
D=M
M=0
@THAT
M=D

// push constant 32
@32
D=A
@SP // push d
M=M+1
A=M-1
M=D

// pop THIS 2
@2
D=A
@THIS
D=D+M
@R13
M=D
@SP // pop d
AM=M-1
D=M
M=0
@R13
A=M
M=D

// push constant 46
@46
D=A
@SP // push d
M=M+1
A=M-1
M=D

// pop THAT 6
@6
D=A
@THAT
D=D+M
@R13
M=D
@SP // pop d
AM=M-1
D=M
M=0
@R13
A=M
M=D

//push pointer 1
@THIS
D=M
@SP // push d
M=M+1
A=M-1
M=D

//push pointer 0
@THAT
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

// push THIS 2
@2
D=A
@THIS
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

// push THAT 6
@6
D=A
@THAT
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

 // End of Program.
(END)
@END
0; JMP

