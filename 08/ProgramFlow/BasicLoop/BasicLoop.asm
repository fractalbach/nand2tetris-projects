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
@R13
A=M
M=D

(LABEL.NullFunction$loop_start)
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

// if-goto NullFunction$loop_start
@SP // pop d
AM=M-1
D=M
@LABEL.NullFunction$loop_start
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

