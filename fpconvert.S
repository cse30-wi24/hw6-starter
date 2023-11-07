// === file header ===
	.arch armv6               // armv6 architecture
	.cpu cortex-a72           // our CPU model
	.arm                      // arm 32-bit IS
	.fpu vfp                  // floating point co-processor
	.syntax unified           // modern syntax
// === definitions applying to the entire source file ===
	// you could put the bit count of certain fields or masks here, for example
	// .equ EXAMPLE_DEF, 0xff
	// .data                  // uncomment if you need the data segment
	.text                     // start of text segment

// === fpconvert ===
	.global fpconvert         // make fpconvert global so the linker knows about it
	.type fpconvert, %function // define fpconvert to be a function
	.equ FP_OFFSET, 32 	      // (# of saved regs - 1) * 4 rounded up to multiples of 8
fpconvert:
// function prologue (do not edit)
	push {r4-r10, fp, lr}     // save registers to stack
	add fp, sp, FP_OFFSET     // set frame pointer to frame base
// you can use any of r0-r10 inclusive
// r0 is the parameter to the function
// the value of r0 upon bx lr is the value returned from the function

// YOUR CODE BEGINS
// === fpconvert function body ===
	// TODO implement; here's one example for the recommended style:
	// instruction operands   // equivalent C code         ; human readable explanation
	// add r0, r1, EQU        // r0 = r1 + EQU             ; add EQU to r0 from r1
// === end fpconvert function body ===
// YOUR CODE ENDS

// function epilogue - do not edit
	sub sp, fp, FP_OFFSET
	pop {r4-r10, fp, lr}      // must match list in prolog's push
	bx lr                     // return
// function footer
	.size fpconvert, (. - fpconvert) // set size for function

// === file footer ===
	.section .note.GNU-stack, "", %progbits // stack/data non-exec (linker)
	.end
