(FUNCTION.sys.init)

// push constant 4000
@4000
D=A
@SP // push d
M=M+1
A=M-1
M=D

// pop pointer 0
@SP // pop d
AM=M-1
D=M
@THIS
M=D

// push constant 5000
@5000
D=A
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

// ===============  call sys.main 0 ====================
@RETURN.sys.main.1  // push return address.
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
@FUNCTION.sys.main  // goto f
0; JMP
(RETURN.sys.main.1)

// pop temp 1
@1
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

(LABEL.sys.init$loop)
// goto sys.init$loop
@LABEL.sys.init$loop
0; JMP

(FUNCTION.sys.main)
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0
@SP
M=M+1
A=M-1
M=0

// push constant 4001
@4001
D=A
@SP // push d
M=M+1
A=M-1
M=D

// pop pointer 0
@SP // pop d
AM=M-1
D=M
@THIS
M=D

// push constant 5001
@5001
D=A
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

// push constant 200
@200
D=A
@SP // push d
M=M+1
A=M-1
M=D

// pop LCL 1
@1
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

// push constant 40
@40
D=A
@SP // push d
M=M+1
A=M-1
M=D

// pop LCL 2
@2
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

// push constant 6
@6
D=A
@SP // push d
M=M+1
A=M-1
M=D

// pop LCL 3
@3
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

// push constant 123
@123
D=A
@SP // push d
M=M+1
A=M-1
M=D

// ===============  call sys.add12 1 ====================
@RETURN.sys.add12.2  // push return address.
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
@FUNCTION.sys.add12  // goto f
0; JMP
(RETURN.sys.add12.2)

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

// push LCL 1
@1
D=A
@LCL
A=M+D
D=M
@SP // push d
M=M+1
A=M-1
M=D

// push LCL 2
@2
D=A
@LCL
A=M+D
D=M
@SP // push d
M=M+1
A=M-1
M=D

// push LCL 3
@3
D=A
@LCL
A=M+D
D=M
@SP // push d
M=M+1
A=M-1
M=D

// push LCL 4
@4
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

// add
@SP // pop d
AM=M-1
D=M
A=A-1
M=M+D

// add
@SP // pop d
AM=M-1
D=M
A=A-1
M=M+D

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

(FUNCTION.sys.add12)

// push constant 4002
@4002
D=A
@SP // push d
M=M+1
A=M-1
M=D

// pop pointer 0
@SP // pop d
AM=M-1
D=M
@THIS
M=D

// push constant 5002
@5002
D=A
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

// push constant 12
@12
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

