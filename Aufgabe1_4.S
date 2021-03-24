/*
 * Aufgabe_1_4.S
 *
 *  Created on: 02.10.2020
 *      Author: Athanasia Leontarakis
 *
 *	Aufgabe : Addition mit Abbruch in einer Schleife
 */
.text /* Specify that code goes in text segment */
.code 32 /* Select ARM instruction set */
.global _startup /* Specify global symbol */
_startup:

	mov r0, #5
	mov r1, #0
	mov r2, #1

	while:
		movs r0, r0
		beq whileEnd
		add r1, r2
		sub r0, #1
		b while

	whileEnd:

stop:
nop
bal stop
.end
