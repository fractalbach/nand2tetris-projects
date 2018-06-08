// bootstrap code
// ----------------------------------
// set stack pointer to 256
@256
D=A
@SP
M=D
// ===============  call sys.init 0 ====================
@RETURN.sys.init.1  // push return address.
D=A
@SP // push d
M=M+1
A=M-1
M=D
@LCL   // push local
D=M
@SP // push d
M=M+1
A=M-1
M=D
@ARG   // push arg
D=M
@SP // push d
M=M+1
A=M-1
M=D
@THIS  // push this
D=M
@SP // push d
M=M+1
A=M-1
M=D
@THAT  // push that
D=M
@SP // push d
M=M+1
A=M-1
M=D
@5    // set D <- (SP - nArgs - 5)
D=A
@SP
D=M-D
@ARG   // set ARG <- D
M=D
@SP    // set LCL <- SP
D=M
@LCL
M=D
@FUNCTION.sys.init  // goto f
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
@Class1.vm.1
M=D

// push constant 0
@0
D=A
@SP // push d
M=M+1
A=M-1
M=D

// ==================== Return ============================
        // ~~~~~~~  create frame pointer ~~~~~~~~~    FRAME = LCL
@LCL    
D=M
@R13    // <- using register 13 for frame pointer.
M=D 
        // ~~~~~~~  save return address ~~~~~~~~~~~~  RET = *(FRAME - 5)
@5 
A=D-A
D=M 
@R14    // <- using register 14 for return address.
M=D
        // ~~~~~~~ reposition return value ~~~~~~~~~  *ARG = pop()
@SP // pop d
AM=M-1
D=M
@ARG
A=M
M=D
        // ~~~~~~~~~~~~ restore values ~~~~~~~~~~~~~
@ARG    // restores stack pointer.
D=M
@SP     // SP = ARG + 1
M=D+1
@R13
AM=M-1
D=M
@THAT   // restore that
M=D
@R13
AM=M-1
D=M 
@THIS   // restore this.
M=D
@R13
AM=M-1
D=M
@ARG    // restore arg.
M=D
@R13
AM=M-1
D=M
@LCL    // restore local.
M=D
        // ~~~~~~~ retrieve and jump to the return address ~~~~~~~~~~~~~
@R14
A=M
0; JMP  // jump to the return address.

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
A=A-1
M=M-D

// ==================== Return ============================
        // ~~~~~~~  create frame pointer ~~~~~~~~~    FRAME = LCL
@LCL    
D=M
@R13    // <- using register 13 for frame pointer.
M=D 
        // ~~~~~~~  save return address ~~~~~~~~~~~~  RET = *(FRAME - 5)
@5 
A=D-A
D=M 
@R14    // <- using register 14 for return address.
M=D
        // ~~~~~~~ reposition return value ~~~~~~~~~  *ARG = pop()
@SP // pop d
AM=M-1
D=M
@ARG
A=M
M=D
        // ~~~~~~~~~~~~ restore values ~~~~~~~~~~~~~
@ARG    // restores stack pointer.
D=M
@SP     // SP = ARG + 1
M=D+1
@R13
AM=M-1
D=M
@THAT   // restore that
M=D
@R13
AM=M-1
D=M 
@THIS   // restore this.
M=D
@R13
AM=M-1
D=M
@ARG    // restore arg.
M=D
@R13
AM=M-1
D=M
@LCL    // restore local.
M=D
        // ~~~~~~~ retrieve and jump to the return address ~~~~~~~~~~~~~
@R14
A=M
0; JMP  // jump to the return address.

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
@Class2.vm.1
M=D

// push constant 0
@0
D=A
@SP // push d
M=M+1
A=M-1
M=D

// ==================== Return ============================
        // ~~~~~~~  create frame pointer ~~~~~~~~~    FRAME = LCL
@LCL    
D=M
@R13    // <- using register 13 for frame pointer.
M=D 
        // ~~~~~~~  save return address ~~~~~~~~~~~~  RET = *(FRAME - 5)
@5 
A=D-A
D=M 
@R14    // <- using register 14 for return address.
M=D
        // ~~~~~~~ reposition return value ~~~~~~~~~  *ARG = pop()
@SP // pop d
AM=M-1
D=M
@ARG
A=M
M=D
        // ~~~~~~~~~~~~ restore values ~~~~~~~~~~~~~
@ARG    // restores stack pointer.
D=M
@SP     // SP = ARG + 1
M=D+1
@R13
AM=M-1
D=M
@THAT   // restore that
M=D
@R13
AM=M-1
D=M 
@THIS   // restore this.
M=D
@R13
AM=M-1
D=M
@ARG    // restore arg.
M=D
@R13
AM=M-1
D=M
@LCL    // restore local.
M=D
        // ~~~~~~~ retrieve and jump to the return address ~~~~~~~~~~~~~
@R14
A=M
0; JMP  // jump to the return address.

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
A=A-1
M=M-D

// ==================== Return ============================
        // ~~~~~~~  create frame pointer ~~~~~~~~~    FRAME = LCL
@LCL    
D=M
@R13    // <- using register 13 for frame pointer.
M=D 
        // ~~~~~~~  save return address ~~~~~~~~~~~~  RET = *(FRAME - 5)
@5 
A=D-A
D=M 
@R14    // <- using register 14 for return address.
M=D
        // ~~~~~~~ reposition return value ~~~~~~~~~  *ARG = pop()
@SP // pop d
AM=M-1
D=M
@ARG
A=M
M=D
        // ~~~~~~~~~~~~ restore values ~~~~~~~~~~~~~
@ARG    // restores stack pointer.
D=M
@SP     // SP = ARG + 1
M=D+1
@R13
AM=M-1
D=M
@THAT   // restore that
M=D
@R13
AM=M-1
D=M 
@THIS   // restore this.
M=D
@R13
AM=M-1
D=M
@ARG    // restore arg.
M=D
@R13
AM=M-1
D=M
@LCL    // restore local.
M=D
        // ~~~~~~~ retrieve and jump to the return address ~~~~~~~~~~~~~
@R14
A=M
0; JMP  // jump to the return address.

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

// ===============  call class1.set 2 ====================
@RETURN.class1.set.2  // push return address.
D=A
@SP // push d
M=M+1
A=M-1
M=D
@LCL   // push local
D=M
@SP // push d
M=M+1
A=M-1
M=D
@ARG   // push arg
D=M
@SP // push d
M=M+1
A=M-1
M=D
@THIS  // push this
D=M
@SP // push d
M=M+1
A=M-1
M=D
@THAT  // push that
D=M
@SP // push d
M=M+1
A=M-1
M=D
@7    // set D <- (SP - nArgs - 5)
D=A
@SP
D=M-D
@ARG   // set ARG <- D
M=D
@SP    // set LCL <- SP
D=M
@LCL
M=D
@FUNCTION.class1.set  // goto f
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

// ===============  call class2.set 2 ====================
@RETURN.class2.set.3  // push return address.
D=A
@SP // push d
M=M+1
A=M-1
M=D
@LCL   // push local
D=M
@SP // push d
M=M+1
A=M-1
M=D
@ARG   // push arg
D=M
@SP // push d
M=M+1
A=M-1
M=D
@THIS  // push this
D=M
@SP // push d
M=M+1
A=M-1
M=D
@THAT  // push that
D=M
@SP // push d
M=M+1
A=M-1
M=D
@7    // set D <- (SP - nArgs - 5)
D=A
@SP
D=M-D
@ARG   // set ARG <- D
M=D
@SP    // set LCL <- SP
D=M
@LCL
M=D
@FUNCTION.class2.set  // goto f
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
@R13
A=M
M=D

// ===============  call class1.get 0 ====================
@RETURN.class1.get.4  // push return address.
D=A
@SP // push d
M=M+1
A=M-1
M=D
@LCL   // push local
D=M
@SP // push d
M=M+1
A=M-1
M=D
@ARG   // push arg
D=M
@SP // push d
M=M+1
A=M-1
M=D
@THIS  // push this
D=M
@SP // push d
M=M+1
A=M-1
M=D
@THAT  // push that
D=M
@SP // push d
M=M+1
A=M-1
M=D
@5    // set D <- (SP - nArgs - 5)
D=A
@SP
D=M-D
@ARG   // set ARG <- D
M=D
@SP    // set LCL <- SP
D=M
@LCL
M=D
@FUNCTION.class1.get  // goto f
0; JMP
(RETURN.class1.get.4)

// ===============  call class2.get 0 ====================
@RETURN.class2.get.5  // push return address.
D=A
@SP // push d
M=M+1
A=M-1
M=D
@LCL   // push local
D=M
@SP // push d
M=M+1
A=M-1
M=D
@ARG   // push arg
D=M
@SP // push d
M=M+1
A=M-1
M=D
@THIS  // push this
D=M
@SP // push d
M=M+1
A=M-1
M=D
@THAT  // push that
D=M
@SP // push d
M=M+1
A=M-1
M=D
@5    // set D <- (SP - nArgs - 5)
D=A
@SP
D=M-D
@ARG   // set ARG <- D
M=D
@SP    // set LCL <- SP
D=M
@LCL
M=D
@FUNCTION.class2.get  // goto f
0; JMP
(RETURN.class2.get.5)

(LABEL.sys.init$while)
// goto sys.init$while
@LABEL.sys.init$while
0; JMP

