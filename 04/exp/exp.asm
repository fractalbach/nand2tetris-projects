
// ==================================================
// Checks for equality
// Does r[0] == r[1] ?
// If yes, then r[2] == 1, else 0
// ==================================================

// GOAL:
// if (r[0] - r[1]) == 0
// then: set = 1
// else: set m[2] = 0


@R0
D=M


@R1
D=D-M 

// clear the output register. 
@R2
M=0 

// d=0 implies that r[0] == r[1],
// if (J != 0) {jump to the end of the program.}
@END
D; JNE

// else set output to 1!  success!
// output in this example is r[2]
@R2
M=1

@END
(END)
0; JMP