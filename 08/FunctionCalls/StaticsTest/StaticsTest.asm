// bootstrap code
// ----------------------------------
// set stack pointer to 256
@256
D=A
@SP
M=D
 // call sys.init 0 
@RETURN.sys.init.1
D=A
@SP // push d
M=M+1
A=M-1
M=D
@LCL
D=M
@SP // push d
M=M+1
A=M-1
M=D
@ARG
D=M
@SP // push d
M=M+1
A=M-1
M=D
@THIS
D=M
@SP // push d
M=M+1
A=M-1
M=D
@0
D=A
@SP
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@FUNCTION.sys.init
0; JMP
(RETURN.sys.init.1)

// ----------------------------------

// ~~~~ Class1.vm ~~~~
(FUNCTION.class1.set)

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

// pop static 0
@SP // pop d
AM=M-1
D=M
M=0
@Class1.vm.0
M=D

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

// pop static 1
@SP // pop d
AM=M-1
D=M
M=0
@Class1.vm.1
M=D

// push constant 0
@0
D=A
@SP // push d
M=M+1
A=M-1
M=D

// return
@SP // pop d
AM=M-1
D=M
M=0
@ARG 	// places return value in the right spot.
A=M
M=D
@ARG	// restores stack pointer.  SP <- ARG + 1
D=M
@SP
M=D+1
@LCL 	// init frame pointer
D=M
@FRAME
M=D
@FRAME
AM=M-1
D=M
@THAT 	// restore that.
M=D
@FRAME
AM=M-1
D=M
@THIS	// restore this.
M=D
@FRAME
AM=M-1
D=M
@ARG	// restore arg.
M=D
@FRAME
AM=M-1
D=M
@LCL 	// restore local.
M=D
@FRAME
AM=M-1
D=M
A=D 	// jumps to return address.
0;JMP

(FUNCTION.class1.get)

// push static 0
@Class1.vm.0
D=M
@SP // push d
M=M+1
A=M-1
M=D

// push static 1
@Class1.vm.1
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

// return
@SP // pop d
AM=M-1
D=M
M=0
@ARG 	// places return value in the right spot.
A=M
M=D
@ARG	// restores stack pointer.  SP <- ARG + 1
D=M
@SP
M=D+1
@LCL 	// init frame pointer
D=M
@FRAME
M=D
@FRAME
AM=M-1
D=M
@THAT 	// restore that.
M=D
@FRAME
AM=M-1
D=M
@THIS	// restore this.
M=D
@FRAME
AM=M-1
D=M
@ARG	// restore arg.
M=D
@FRAME
AM=M-1
D=M
@LCL 	// restore local.
M=D
@FRAME
AM=M-1
D=M
A=D 	// jumps to return address.
0;JMP

// ~~~~ Class2.vm ~~~~
(FUNCTION.class2.set)

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

// pop static 0
@SP // pop d
AM=M-1
D=M
M=0
@Class2.vm.0
M=D

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

// pop static 1
@SP // pop d
AM=M-1
D=M
M=0
@Class2.vm.1
M=D

// push constant 0
@0
D=A
@SP // push d
M=M+1
A=M-1
M=D

// return
@SP // pop d
AM=M-1
D=M
M=0
@ARG 	// places return value in the right spot.
A=M
M=D
@ARG	// restores stack pointer.  SP <- ARG + 1
D=M
@SP
M=D+1
@LCL 	// init frame pointer
D=M
@FRAME
M=D
@FRAME
AM=M-1
D=M
@THAT 	// restore that.
M=D
@FRAME
AM=M-1
D=M
@THIS	// restore this.
M=D
@FRAME
AM=M-1
D=M
@ARG	// restore arg.
M=D
@FRAME
AM=M-1
D=M
@LCL 	// restore local.
M=D
@FRAME
AM=M-1
D=M
A=D 	// jumps to return address.
0;JMP

(FUNCTION.class2.get)

// push static 0
@Class2.vm.0
D=M
@SP // push d
M=M+1
A=M-1
M=D

// push static 1
@Class2.vm.1
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

// return
@SP // pop d
AM=M-1
D=M
M=0
@ARG 	// places return value in the right spot.
A=M
M=D
@ARG	// restores stack pointer.  SP <- ARG + 1
D=M
@SP
M=D+1
@LCL 	// init frame pointer
D=M
@FRAME
M=D
@FRAME
AM=M-1
D=M
@THAT 	// restore that.
M=D
@FRAME
AM=M-1
D=M
@THIS	// restore this.
M=D
@FRAME
AM=M-1
D=M
@ARG	// restore arg.
M=D
@FRAME
AM=M-1
D=M
@LCL 	// restore local.
M=D
@FRAME
AM=M-1
D=M
A=D 	// jumps to return address.
0;JMP

// ~~~~ Sys.vm ~~~~
(FUNCTION.sys.init)

// push constant 6
@6
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

 // call class1.set 2 
@RETURN.class1.set.2
D=A
@SP // push d
M=M+1
A=M-1
M=D
@LCL
D=M
@SP // push d
M=M+1
A=M-1
M=D
@ARG
D=M
@SP // push d
M=M+1
A=M-1
M=D
@THIS
D=M
@SP // push d
M=M+1
A=M-1
M=D
@2
D=A
@SP
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@FUNCTION.class1.set
0; JMP
(RETURN.class1.set.2)

// pop temp 0
@0
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

// push constant 23
@23
D=A
@SP // push d
M=M+1
A=M-1
M=D

// push constant 15
@15
D=A
@SP // push d
M=M+1
A=M-1
M=D

 // call class2.set 2 
@RETURN.class2.set.3
D=A
@SP // push d
M=M+1
A=M-1
M=D
@LCL
D=M
@SP // push d
M=M+1
A=M-1
M=D
@ARG
D=M
@SP // push d
M=M+1
A=M-1
M=D
@THIS
D=M
@SP // push d
M=M+1
A=M-1
M=D
@2
D=A
@SP
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@FUNCTION.class2.set
0; JMP
(RETURN.class2.set.3)

// pop temp 0
@0
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

 // call class1.get 0 
@RETURN.class1.get.4
D=A
@SP // push d
M=M+1
A=M-1
M=D
@LCL
D=M
@SP // push d
M=M+1
A=M-1
M=D
@ARG
D=M
@SP // push d
M=M+1
A=M-1
M=D
@THIS
D=M
@SP // push d
M=M+1
A=M-1
M=D
@0
D=A
@SP
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@FUNCTION.class1.get
0; JMP
(RETURN.class1.get.4)

 // call class2.get 0 
@RETURN.class2.get.5
D=A
@SP // push d
M=M+1
A=M-1
M=D
@LCL
D=M
@SP // push d
M=M+1
A=M-1
M=D
@ARG
D=M
@SP // push d
M=M+1
A=M-1
M=D
@THIS
D=M
@SP // push d
M=M+1
A=M-1
M=D
@0
D=A
@SP
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@FUNCTION.class2.get
0; JMP
(RETURN.class2.get.5)

(LABEL.sys.init$while)
// goto sys.init$while
@LABEL.sys.init$while
0; JMP

