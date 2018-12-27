.text
.equ Hex,  0xFF200020
.equ Buttons, 0xFF200050
.global _start


_start:

movia r1, Pattern1
movia r16, Pattern2
movia r3, Hex
movia r4, Buttons
movi r20, 1
movi r17, 1
mov r23, r1
mov r22, r16

movi r6, 9
movi r7, 9
movi r15, 0 
movi r18, 1

br FOREVER

DISPLAY:
beq r6, r0, FOREVER
subi r6, r6, 1
movia r11, 10000000 # supposed to be 15000000
ldwio r10, 0(r1)
stwio r10, 0(r3)
addi r1, r1, 4
br DELAY

DISPLAYTWO:
beq r7, r0, FOREVER
subi r7, r7, 1
movia r5, 10000000 #supposed to be 15000000
ldwio r10, 0(r16)
stwio r10, 0(r3)
addi r16, r16, 4
br DELAYTWO


DELAY:
subi r11, r11, 1
bne r11, r0, DELAY
call CHECKBUTTON
br DISPLAY

DELAYTWO:
subi r5, r5, 1
bne r5, r0, DELAYTWO
call CHECKBUTTON
br DISPLAYTWO




FOREVER:
movi r6, 9
movi r7, 9
mov r1, r23
mov r16, r22
beq r15, r0, DISPLAY
beq r15, r18, DISPLAYTWO
#movi r12, 0x00000001
#movi r13, 0x00000002
#beq r21, r12, FLIPBIT
#beq r21, r13, FLIPBIT
br RESET

CHECKBUTTON:
ldwio r21, 0(r4)
andi r21, r21, 0x00000003
movi r12, 0x00000001
movi r13, 0x00000002
beq r21, r12, FLIPBIT
beq r21, r13, FLIPBIT

beq r15, r0, DISPLAY
beq r15, r18, DISPLAYTWO


FLIPBIT:
xori r15, r15, 1
beq r15, r0, DISPLAY
beq r15, r18, DISPLAYTWO



RESET:
movi r6, 9
movi r7, 9
mov r1, r23
mov r16, r22
br FOREVER








.data

Pattern1:
.word     0x00000000,0x00000079,0x00007949,0x00794949,0x79494949,0x49494900,0x49490000,0x49000000, 0x00000000

Pattern2:
.word     0x00000000,0x4F000000,0x494F0000,0x49494F00,0x4949494F,0x00494949,0x00004949,0x00000049,0x00000000

.end
