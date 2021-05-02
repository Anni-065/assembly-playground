/*
 * Aufgabe2_2.S
 *
 *  Created on: 28.03.2021
 *      Author: A. Leontarakis
 *
 *	Aufgabe : Multiplikation durch wiederholte Addition
 */
.text /* Specify that code goes in text segment */

.code 32 /* Select ARM instruction set */
variable_a: .word 0x123456   // global variable

.global _startup /* Specify global symbol */


_startup:
	ldr r0, =2147483648 // r0 variable A
	ldr r1, =5 // r1 variable B
	ldr r2, =0 // r2 low
	ldr r3, =0 // r3 high

	start:
		movs r1, r1
		beq rNull

		adds r2, r2, r0
		bcc keinUeberlauf
			add r3, r3, #1
		keinUeberlauf:
			sub r1, r1, #1

		b start

	rNull:

stop:
nop
bal stop

.end


