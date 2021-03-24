/*
 * Aufgabe_1_3.S
 *
 *  Created on: 02.10.2020
 *      Author: Athanasia Leontarakis
 *
 *	Aufgabe : Addition vieler Zahlen in einer Schleife
 */
.text /* Specify that code goes in text segment */
.code 32 /* Select ARM instruction set */
.global _startup /* Specify global symbol */
_startup:

	mov r0, #1
	mov r1, #1

	while:
		add r0, r1
		b while

stop:
nop
bal stop
.end
