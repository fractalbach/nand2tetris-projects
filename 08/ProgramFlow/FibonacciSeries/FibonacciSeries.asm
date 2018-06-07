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

// pop pointer 1
@SP // pop d
AM=M-1
D=M
@THAT
M=D

// push constant 0
@0
D=A
@SP // push d
M=M+1
A=M-1
M=D

// pop THAT 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP // pop d
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1
@1
D=A
@SP // push d
M=M+1
A=M-1
M=D

// pop THAT 1
@1
D=A
@THAT
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

// push constant 2
@2
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

(LABEL.NullFunction$main_loop_start)
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

// if-goto NullFunction$compute_element
@SP // pop d
AM=M-1
D=M
@LABEL.NullFunction$compute_element
D; JNE

// goto NullFunction$end_program
@LABEL.NullFunction$end_program
0; JMP

(LABEL.NullFunction$compute_element)
// push THAT 0
@0
D=A
@THAT
A=M+D
D=M
@SP // push d
M=M+1
A=M-1
M=D

// push THAT 1
@1
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
A=A-1
M=M+D

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
@R13
A=M
M=D

//push pointer 0
@THAT
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

// add
@SP // pop d
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@SP // pop d
AM=M-1
D=M
@THAT
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

// goto NullFunction$main_loop_start
@LABEL.NullFunction$main_loop_start
0; JMP

(LABEL.NullFunction$end_program)
