/*
 * Aufgabe 3_1.S
 *
 *  Created on: 14.05.2021
 *      Author: ***********
 *
 * Aufgabe : Unterprogrammaufruf – Delay
 */
.data
.global datastart
datastart:
	.word 0x05
	.word 0x05
	.word 0x05
	.word 0x05
	.word 0x05

.text /* Specify that code goes in text segment */

.equ NUMVALS, 5

.code 32 /* Select ARM instruction set */
.global _startup /* Specify global symbol */
_startup:
	mov r3, #NUMVALS
	ldr r5, =datastart
	ldr sp, =0x40001000

	start:
		ldr r6, [r5], #4
		adds r4, r6
		subs r3, r3, #1

	bl delay
		cmp r3, #0
	bne start
	b stop

	delay:
		stmfd sp!, {r7, lr}
		ldr r7, =1
		wait:
			subs r7, r7, #1
			bne wait
		ldmfd sp!, {r7, pc}

stop:
nop
bal stop


.end

