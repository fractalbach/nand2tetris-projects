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

// ~~~~ Main.vm ~~~~
(FUNCTION.main.fibonacci)

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

// true if x < y, else false
@SP // pop d
AM=M-1
D=M 
A=A-1
D=M-D
M=-1
@LOCATION1
D; JLT
@SP
A=M-1
M=0
(LOCATION1)

// if-goto main.fibonacci$if_true
@SP // pop d
AM=M-1
D=M
@LABEL.main.fibonacci$if_true
D; JNE

// goto main.fibonacci$if_false
@LABEL.main.fibonacci$if_false
0; JMP

(LABEL.main.fibonacci$if_true)
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

(LABEL.main.fibonacci$if_false)
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

// ===============  call main.fibonacci 1 ====================
@RETURN.main.fibonacci.2  // push return address.
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
@6    // set D <- (SP - nArgs - 5)
D=A
@SP
D=M-D
@ARG   // set ARG <- D
M=D
@SP    // set LCL <- SP
D=M
@LCL
M=D
@FUNCTION.main.fibonacci  // goto f
0; JMP
(RETURN.main.fibonacci.2)

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

// ===============  call main.fibonacci 1 ====================
@RETURN.main.fibonacci.3  // push return address.
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
@6    // set D <- (SP - nArgs - 5)
D=A
@SP
D=M-D
@ARG   // set ARG <- D
M=D
@SP    // set LCL <- SP
D=M
@LCL
M=D
@FUNCTION.main.fibonacci  // goto f
0; JMP
(RETURN.main.fibonacci.3)

// add
@SP // pop d
AM=M-1
D=M
A=A-1
M=M+D

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

// push constant 4
@4
D=A
@SP // push d
M=M+1
A=M-1
M=D

// ===============  call main.fibonacci 1 ====================
@RETURN.main.fibonacci.4  // push return address.
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
@6    // set D <- (SP - nArgs - 5)
D=A
@SP
D=M-D
@ARG   // set ARG <- D
M=D
@SP    // set LCL <- SP
D=M
@LCL
M=D
@FUNCTION.main.fibonacci  // goto f
0; JMP
(RETURN.main.fibonacci.4)

(LABEL.sys.init$while)
// goto sys.init$while
@LABEL.sys.init$while
0; JMP

