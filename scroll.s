.text
.equ HEX0_3,  0xFF200020
.global _start

_start:

		movia r2, HEX0_3  #Moves Hex 0-3 address into r2
		movia r3, Hex_byte1
		movia r4, Hex_byte2
		movia r5, Hex_byte3
		movia r6, Hex_byte4
		movia r7, Hex_byte5
		movia r8, Hex_byte6
		movia r9, Hex_byte7
		movia r10, Hex_byte8
		movia r11, Hex_byte9
		movia r12, Hex_byte10
		movia r13, Hex_byte11
		movia r14, Hex_byte12
		movia r15, Hex_byte13
		movia r16, Hex_byte14
		movia r17, Hex_byte15
		movia r18, Hex_byte16
		movia r19, Hex_byte17
		movia r20, Hex_byte18
		movia r21, Hex_byte19
		









		movia r22, 15000000 # Delay Counter in r21

LOOP:

		ldwio r1, 0(r3)
#		ldwio r6, 0(r18) # Loads first bytes of Hex_bits1 into r6
#		ldwio r7, 0(r17) # Loads first bytes of Hex_bits2 into r7

		stwio r1, 0(r2)   # Loads the first Character onto Hex 0-3
	#	stwio r6, 0(r2)   # Loads the first character of hex_bits2 into Hex 4-5
		call DELAY

		ldwio r1, 0(r4)

		stwio r1, 0(r2)
	
		call DELAY

		ldwio r1, 0(r5)

		stwio r1, 0(r2)
		call DELAY

		ldwio r1, 0(r6)

		stwio r1, 0(r2)
		call DELAY

		ldwio r1, 0(r7)
		stwio r1, 0(r2)
		call DELAY

		ldwio r1, 0(r8)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r9)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r10)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r11)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r12)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r13)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r14)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r15)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r16)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r17)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r18)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r19)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r20)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r21)

		stwio r1, 0(r2)

		movia r3, Hex_byteA
		movia r4, Hex_byteB
		movia r5, Hex_byteC
		movia r6, Hex_byte1

		call DELAY

		ldwio r1, 0(r3)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r4)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r3)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r4)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r3)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r4)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r5)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r6)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r5)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r6)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r5)

		stwio r1, 0(r2)

		call DELAY

		ldwio r1, 0(r6)

		stwio r1, 0(r2)

		br _start




DELAY:
	subi	r22, r22, 1
	bne		r22, r0, DELAY	
	movia r22, 15000000
    ret


Hex_byte1:
	.word 0x00000000

Hex_byte2:
	.word 0x00000076

Hex_byte3:
	.word 0x00007679

Hex_byte4:
	.word 0x00767906

Hex_byte5:
	.word 0x76790606

Hex_byte6:
	.word 0x7906065C

Hex_byte7:
	.word 0x06065C00

Hex_byte8:
	.word 0x065C007C

Hex_byte9:
	.word 0x5C007C3E

Hex_byte10:
	.word 0x007C3E71

Hex_byte11:
	.word 0x7C3E7171

Hex_byte12:
	.word 0x3E71716D

Hex_byte13:
	.word 0x71716D40

Hex_byte14:
	.word 0x716D4040

Hex_byte15:
	.word 0x6D404040

Hex_byte16:
	.word 0x40404000

Hex_byte17:
	.word 0x40400000

Hex_byte18:
	.word 0x40000000

Hex_byte19:
	.word 0x00000000

Hex_byteA:
	.word 0x49494949

Hex_byteB:
	.word 0x36363636

Hex_byteC:
	.word 0x7F7F7F7F

.end

#Hex_bits1:
#	.word 0x54, 0x06, 0x6F, 0x6F, 0x79, 0x50

#Hex_bits2:
#	.word 0x00, 0x00, 0x54 ,0x06

#	.end

#Hex_bits1:
#	.word 0x7F3E7171

#Hex_bits2:
#	.word 0x00006F3F

#	.end
		
