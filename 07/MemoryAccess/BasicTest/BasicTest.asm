// push constant 10
@10
D=A
@SP // push d
M=M+1
A=M-1
M=D

// pop LCL 0
@0
D=A
@LCL
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

// push constant 21
@21
D=A
@SP // push d
M=M+1
A=M-1
M=D

// push constant 22
@22
D=A
@SP // push d
M=M+1
A=M-1
M=D

// pop ARG 2
@2
D=A
@ARG
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

// pop ARG 1
@1
D=A
@ARG
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

// push constant 36
@36
D=A
@SP // push d
M=M+1
A=M-1
M=D

// pop THIS 6
@6
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

// push constant 42
@42
D=A
@SP // push d
M=M+1
A=M-1
M=D

// push constant 45
@45
D=A
@SP // push d
M=M+1
A=M-1
M=D

// pop THAT 5
@5
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

// pop THAT 2
@2
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

// push constant 510
@510
D=A
@SP // push d
M=M+1
A=M-1
M=D

// pop temp 6
@6
D=A
@5
D=A+D
@R13
M=D
@SP // pop d
AM=M-1
D=M
M=0
@R13
A=M
M=D

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

// push THAT 5
@5
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

// push THIS 6
@6
D=A
@THIS
A=M+D
D=M
@SP // push d
M=M+1
A=M-1
M=D

// push THIS 6
@6
D=A
@THIS
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

// subtract
@SP // pop d
AM=M-1
D=M
M=0
A=A-1
M=M-D

// push temp 6
@6
D=A
@5
A=A+D
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

