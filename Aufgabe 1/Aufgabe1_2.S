/*
 * Aufgabe_1_2.S
 *
 *  Created on: 02.10.2020
 *      Author: Athanasia Leontarakis
 *
 *	Aufgabe : Addition mit Pseudobefehlen
 */
.text /* Specify that code goes in text segment */
.code 32 /* Select ARM instruction set */
.global _startup /* Specify global symbol */
_startup:

	ldr r0, =25
	ldr r1, =204
	add r2, r1, r0

stop:
nop
bal stop
.end
