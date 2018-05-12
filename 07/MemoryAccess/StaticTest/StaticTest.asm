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
@StaticTest.vm.8
M=D

// pop static 3
@SP // pop d
AM=M-1
D=M
M=0
@StaticTest.vm.3
M=D

// pop static 1
@SP // pop d
AM=M-1
D=M
M=0
@StaticTest.vm.1
M=D

// push static 3
@StaticTest.vm.3
D=M
@SP // push d
M=M+1
A=M-1
M=D

// push static 1
@StaticTest.vm.1
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
@StaticTest.vm.8
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

