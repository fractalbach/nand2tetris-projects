// push constant 7
@7
D=A
@SP // push d
M=M+1
A=M-1
M=D

// push constant 8
@8
D=A
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

