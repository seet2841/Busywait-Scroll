# Busywait-Scroll
Both scroll.s and button.s are assembly files that are implemented using memory mapped I/O on the DE-10 Lite FPGA Board

scroll.s is a busywait program that loads in frames of the statement "Hello Buffs" onto the DE10 Lite's Hexadecimal Seven Segment Display followed by various patterns and symbols

button.s is built off of the code in scroll.s but utilizes the concept of polling in conjunction with the two physical buttons located on the DE10 Lite Board. The program essentially
runs scroll.s with a different pattern until it successfully polls a button press (detected by flipping a register bit with an xor function everytime either button is pressed), the
program then reverses the order of the scrolling (changes from left-right to right-left and vice versa).
