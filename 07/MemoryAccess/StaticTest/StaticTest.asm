// push constant 111
@111
D=A
@SP // push d
M=M+1
A=M-1
M=D

// push constant 333
@333
D=A
@SP // push d
M=M+1
A=M-1
M=D

// push constant 888
@888
D=A
@SP // push d
M=M+1
A=M-1
M=D

// pop static 8
@SP // pop d
AM=M-1
D=M
M=0
@stdin.8
M=D

// pop static 3
@SP // pop d
AM=M-1
D=M
M=0
@stdin.3
M=D

// pop static 1
@SP // pop d
AM=M-1
D=M
M=0
@stdin.1
M=D

// push static 3
@stdin.3
D=M
@SP // push d
M=M+1
A=M-1
M=D

// push static 1
@stdin.1
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

// push static 8
@stdin.8
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

