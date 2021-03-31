/*
 * Aufgabe_1_4.S
 *
 *  Created on: 02.10.2020
 *      Author: Athanasia Leontarakis
 *
 *	Aufgabe : Addition mit Abbruch in einer Schleife
 *
 * Überprüfen Sie die Ergebniswerte im Zielregister nach unterschiedlich langen
 * Programmlaufzeiten. Wie groß ist der Maximalwert? 4294967295
 *
 * Wird dieser Maximalwert zuverlässig nach (beliebig) langer Programmlaufzeit erreicht? Ja.
 *
 * Wie groß ist der Maximalwert bei Verwendung von 32bit?  2^32
 *
 * Wie groß wäre er bei Verwendung von 8bit bzw. 16bit?  2^8 bzw. 2^16
 *
 * Bestimmen Sie die Taktfrequenz des Prozessors durch Zählen der Schleifendurchläufe bei einer
 * Laufzeit von einer Minute. Achtung: Der Branch (b)-Befehl benötigt drei Prozessortakte!
 * Nach 1 Minute: r0=2159026 -> Taktfrequenz: 2159026*5/60 = 179919 Hz
 *
 */
.text /* Specify that code goes in text segment */
.code 32 /* Select ARM instruction set */
.global _startup /* Specify global symbol */
_startup:

	mov r0, #0
	mov r1, #1

	while:
		mov r2, r0
		adds r0, r1
		bcc while

stop:
nop
bal stop
.end
