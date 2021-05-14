/*
 * Aufgabe 2_1.S
 *
 *  Created on: 28.03.2021
 *      Author: Athanasia Leontarakis
 *
 *	Aufgabe : 64 Bit Addition
 */
.text /* Specify that code goes in text segment */

.code 32 /* Select ARM instruction set */

.global _startup /* Specify global symbol */


_startup:

	ldr r0, =0  //A
	ldr r1, =0  //B
	ldr r2, =0  //C
	ldr r3, =0  //D

	adds r6, r1, r3
	bcc clear
	mov r4, #1
	clear:
	adds r7, r2, r4

stop:
nop
bal stop

.end
