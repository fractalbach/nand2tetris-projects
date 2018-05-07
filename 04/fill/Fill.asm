// This file is part of 
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm
//
// ------------------------------------------------------------------ 
//                       Screen and Keyboard
//                           Input/Output
//                              
//               written in the Hack Assembly Language
// 
// ------------------------------------------------------------------ 
//
//
// Initial Variables
// 
// Changes the screen.
// Must iterate through each individual pixel on the screen and fill it.
// Increment the A register by 1, then set RAM[A] to 1.
// 8k pixels total.  Use a counter to keep track.


// Create a variable to hold the changing location.
// initial default value.  location = SCREEN.
@SCREEN
D=A             // set data register <-- first location.
@location
M=D             // set variable "location" <-- data register.


// create a variable to hold the maximum location.
// Set the maximum location.  max = (SCREEN + 8000)
@8000
D=A             // data = 8k.
@SCREEN
D=D+A           // data += minimum SCREEN value.
@max
M=D             // max = data = (SCREEN + 8k)


// ------------------------------------------------------------------ 
// The Main Loop
//
// 1. Check for new inputs.  Check the filler variable.
// 2. fill or clear the current pixel.
// 3. go to the next pixel.
// 4. If we are passed the maximum pixel, then go back to the first pixel.
// 

(LOOP)

    // check for inputs.
    // If (input register value == 0) then clear the screen.

    @KBD
    D=M         // copy the input to data register.
    @CLEAR
    D; JEQ      // If (D == 0) then goto (CLEAR).
    @FILL
    0; JMP      // else: goto (FILL).

    (CLEAR)
    @location   
    A=M         // set A to current location.
    M=0         // set RAM[A] to 0, which clears the entire pixel.
    @NEXT
    0; JMP      // always jump to "NEXT".

    (FILL)
    @location   
    A=M         // set A to current location.
    M=-1        // sets RAM[A] to -1, which fills the entire pixel.
    @NEXT 
    0; JMP      // always jump to "NEXT".

    (NEXT)
    @location
    M=M+1       // Increment the location by 1.


    // check to see if we have passed the last screen register.
    // if we have, reset the current location to first screen register.
    // if (max <= current) then reset location
    // if ((max - current) <= 0) then reset.

    @max
    D=M         // D = max
    @location
    D=D-M       // D = max - current
    @RESET
    D; JLE      // if (D <= 0) then reset

    // check to see if the location is above the minimum value.
    // if (current < min) then reset
    // if ((current - min) < 0) reset

    @location
    D=M
    @SCREEN
    D=D-M
    @RESET 
    D; JLT

    // check to see if we have a negative location value. 
    // if (location < 0) then reset
    @location
    D=M
    @RESET
    D; JLT


    // If the current location variable passes the other conditions,
    // then it doesn't need to be reset, and we can go back to the beginning
    // of the loop.
    @LOOP       
    0; JMP      // jump to the beginning of loop.


    // Reset changes the value of the "location" variable to the first
    // pixel on the screen.

    (RESET)
    @SCREEN
    D=A         // data = SCREEN (minimum location)
    @location
    M=D         // current location = data

// Always loop back to the beginning of the listening loop.
// LOOP FOREVER! WOOOOOOOOO!!

@LOOP
0; JMP


// ------------------------------------------------------------------
// This code shouldn't be able to be reached unless explicitly jumped to.
// both of these routines should jump the (NEXT), which is back inside
// the main program area.
// ------------------------------------------------------------------ 

@END
(END)
0; JMP
