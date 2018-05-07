// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//                           Multiplication
//  
//                  RAM[0] * RAM[1]  --->   RAM[2]
//
//
// ------------------------------------------------------------------ 
// Part I.  The Assemblage of Variables.

// Initialize output variable to 0,
// Because it might be something else, right now!

@R2
M=0

// Before doing anything else, check if either is equal to 0.
// Because if it's 0, we can exit the program right away, because...
// for all x,  0*x=0 , based on axioms.

@R0         // First Number is RAM[0]
D=M         // Set data <-- RAM[0]
@END
D; JEQ      // jumps to the end if data = 0
    
@R1         // Second Number is RAM[1]
D=M         // Set data <-- RAM[1]
@END
D; JEQ


// It is established that neither number is equal to 0.
// As a result, there will be at least 1 iteration involved.
// For this program, we will use the First number as our Counter.

@R0         
D=M         // set data <-- RAM[0].
@counter    
M=D         // set counter <-- data.


// We could have a negative number.  It is totally fine to multiply
// negative numbers in mathematics, but we can't have negative iterations.
// If the counter is negative: reverse the sign.

@POSITIVE
D; JGT      // if (data > 0) {jump to "positive", skipping sign reversal}.

@counter
M=-M        // sign reversal.  This step should only happen when counter < 0.

(POSITIVE)  // checkpoint for the positive numbers to skip to.





// ------------------------------------------------------------------ 
// Part II.   An Entirely Novel Idea: The Loop.
// 
//    while (counter > 0) {
//        r2 += r1
//        counter--;
//    }
//

(LOOP)
    // At the beginning of the loop, grab the saved value of R2
    // and place it into the data register, so we can operate on it.
    // After we operate, update the value of R2.

    @R2
    D=M
    @R1
    D=D+M
    @R2
    M=D

    // Now we need to decrement the value of the counter.
    // Copy the decremented value to the data register,
    // because we want to check to see if it's above 0 or not.
    // If it is, we loop again.

    @counter
    MD=M-1
    @LOOP
    D; JGT


// ------------------------------------------------------------------ 
// Part III.  Post-Loop-ocalypse
//
// We have to do one final check before ending the program entirely.
// IF:   we had a negative number in RAM[0] at the beginning,
// THEN: we reversed the counter in order to maintain positive iterations.
// AND:  our answer is currently off by a factor of -1.

@R0
D=M         // Set data <-- RAM[0]

@END
D; JGT      // if (data > 0) jump to the end. We are done.

@R2         // Answer is located in RAM[2]
M=-M        // Sign reversal effectively multiplies by -1.


// ------------------------------------------------------------------ 
// Part IV. You now haz multiplication.  You are the Winrar.

@END
(END)
0; JMP