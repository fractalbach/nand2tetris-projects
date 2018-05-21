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
M=0
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
M=0
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

(LABEL.main_loop_start)
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

// if-goto compute_element
@SP // pop d
AM=M-1
D=M
M=0
@LABEL.compute_element
D; JNE

// goto end_program
@LABEL.end_program
0; JMP

(LABEL.compute_element)
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
M=0
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
M=0
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
M=0
A=A-1
M=M+D

// pop pointer 1
@SP // pop d
AM=M-1
D=M
M=0
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

// goto main_loop_start
@LABEL.main_loop_start
0; JMP

(LABEL.end_program)
 // End of Program.
(END)
@END
0; JMP

