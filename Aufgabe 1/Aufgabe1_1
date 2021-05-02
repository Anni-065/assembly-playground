/*
 * Aufgabe_1_1.S
 *
 *  Created on: 02.10.2020
 *      Author: Athanasia Leontarakis
 *
 *	Aufgabe : Addition
 */
.text /* Specify that code goes in text segment */
.code 32 /* Select ARM instruction set */
.global _startup /* Specify global symbol */
_startup:

	mov r1, #25
	mov r2, #204
	add r0, r1, r2

stop:
	nop
	bal stop
.end
