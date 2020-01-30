@ arithmetic1 program
@ team: x87
.section .data
.section .text
.globl _start
_start:

@ load A, B, C, D into registers
	mov r1, #10	@ r1 is A
	mov r2, #11	@ r2 is B
	mov r3, #7	@ r3 is C
	mov r4, #2	@ r4 is D
@ calculate (A + B) and store the result in r5
	add r5, r1, r2	@ r5 = r1 + r2
@ calculate (C * D) and store the result in r6
	mul r6, r3, r4	@ r6 = r3 * r4
@ calculate the expression and store the reults in r1, which is also A
	sub r1, r5, r6 	@ r1 = r5 - r6

	mov r7, #1	@ Program Termination: exit syscall
	svc #0		@ Program Termination: wake kernel
.end

