// push constant 17
@17
D=A
@SP // push d
M=M+1
A=M-1
M=D

// push constant 17
@17
D=A
@SP // push d
M=M+1
A=M-1
M=D

// true if x = y, else false
@SP // pop d
AM=M-1
D=M 
A=A-1
D=M-D
M=-1
@LOCATION1
D; JEQ
@SP
A=M-1
M=0
(LOCATION1)

// push constant 17
@17
D=A
@SP // push d
M=M+1
A=M-1
M=D

// push constant 16
@16
D=A
@SP // push d
M=M+1
A=M-1
M=D

// true if x = y, else false
@SP // pop d
AM=M-1
D=M 
A=A-1
D=M-D
M=-1
@LOCATION2
D; JEQ
@SP
A=M-1
M=0
(LOCATION2)

// push constant 16
@16
D=A
@SP // push d
M=M+1
A=M-1
M=D

// push constant 17
@17
D=A
@SP // push d
M=M+1
A=M-1
M=D

// true if x = y, else false
@SP // pop d
AM=M-1
D=M 
A=A-1
D=M-D
M=-1
@LOCATION3
D; JEQ
@SP
A=M-1
M=0
(LOCATION3)

// push constant 892
@892
D=A
@SP // push d
M=M+1
A=M-1
M=D

// push constant 891
@891
D=A
@SP // push d
M=M+1
A=M-1
M=D

// true if x < y, else false
@SP // pop d
AM=M-1
D=M 
A=A-1
D=M-D
M=-1
@LOCATION4
D; JLT
@SP
A=M-1
M=0
(LOCATION4)

// push constant 891
@891
D=A
@SP // push d
M=M+1
A=M-1
M=D

// push constant 892
@892
D=A
@SP // push d
M=M+1
A=M-1
M=D

// true if x < y, else false
@SP // pop d
AM=M-1
D=M 
A=A-1
D=M-D
M=-1
@LOCATION5
D; JLT
@SP
A=M-1
M=0
(LOCATION5)

// push constant 891
@891
D=A
@SP // push d
M=M+1
A=M-1
M=D

// push constant 891
@891
D=A
@SP // push d
M=M+1
A=M-1
M=D

// true if x < y, else false
@SP // pop d
AM=M-1
D=M 
A=A-1
D=M-D
M=-1
@LOCATION6
D; JLT
@SP
A=M-1
M=0
(LOCATION6)

// push constant 32767
@32767
D=A
@SP // push d
M=M+1
A=M-1
M=D

// push constant 32766
@32766
D=A
@SP // push d
M=M+1
A=M-1
M=D

// true if x > y, else false
@SP // pop d
AM=M-1
D=M 
A=A-1
D=M-D
M=-1
@LOCATION7
D; JGT
@SP
A=M-1
M=0
(LOCATION7)

// push constant 32766
@32766
D=A
@SP // push d
M=M+1
A=M-1
M=D

// push constant 32767
@32767
D=A
@SP // push d
M=M+1
A=M-1
M=D

// true if x > y, else false
@SP // pop d
AM=M-1
D=M 
A=A-1
D=M-D
M=-1
@LOCATION8
D; JGT
@SP
A=M-1
M=0
(LOCATION8)

// push constant 32766
@32766
D=A
@SP // push d
M=M+1
A=M-1
M=D

// push constant 32766
@32766
D=A
@SP // push d
M=M+1
A=M-1
M=D

// true if x > y, else false
@SP // pop d
AM=M-1
D=M 
A=A-1
D=M-D
M=-1
@LOCATION9
D; JGT
@SP
A=M-1
M=0
(LOCATION9)

// push constant 57
@57
D=A
@SP // push d
M=M+1
A=M-1
M=D

// push constant 31
@31
D=A
@SP // push d
M=M+1
A=M-1
M=D

// push constant 53
@53
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

// push constant 112
@112
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

// negation
@SP
A=M-1
M=-M

// AND
@SP // pop d
AM=M-1
D=M
A=A-1
M=M&D

// push constant 82
@82
D=A
@SP // push d
M=M+1
A=M-1
M=D

// OR
@SP // pop d
AM=M-1
D=M
A=A-1
M=M|D

// bitwise NOT
@SP
A=M-1
M=!M

