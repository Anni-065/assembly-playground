/*
 * Beispiel.S
 *
 *  Created on: 28.03.2021
 *      Author: A. Leontarakis
 *
 *	Aufgabe : Berechnung der Summe aus fünf Zahlen an fortlaufenden Adressen
 */
.text /* Specify that code goes in text segment */

.equ NUMVALS, 5

.code 32 /* Select ARM instruction set */

.global _startup /* Specify global symbol */

_startup:
	mov r3, #NUMVALS
	ldr r5, =datastart

	start:
		ldr r6, [r5], #4
		adds r4, r6

		bcs ueberlauf  //-> falls Überlauf mitgezählt werden soll
		add r1, r1, #1  //-> falls Überlauf mitgezählt werden soll

	ueberlauf: //-> falls Überlauf mitgezählt werden soll
		subs r3, r3, #1
		cmp r3, #0
	bne start

stop:
nop
bal stop

.data
.global datastart
datastart:
	.word 0x01
	.word 0x02
	.word 0x03
	.word 0x04
	.word 0x05

.end
