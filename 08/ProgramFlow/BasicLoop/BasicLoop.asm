// push constant 0
@0
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

(LABEL.loop_start)
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

// add
@SP // pop d
AM=M-1
D=M
M=0
A=A-1
M=M+D

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

// push constant 1
@1
D=A
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

// pop ARG 0
@0
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

// if-goto loop_start
@SP // pop d
AM=M-1
D=M
M=0
@LABEL.loop_start
D; JNE

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

 // End of Program.
(END)
@END
0; JMP

