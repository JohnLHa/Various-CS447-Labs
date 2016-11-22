.data
prompt:  .asciiz "Please enter your integer: \n"
inbin: .asciiz "\nHere is the input in binary: "
inhex: .asciiz "\nHere is the input in hexidemical: "
outbin: .asciiz "\nHere is the output in binary: "
outhex: .asciiz "\nHere is the output in hexadecimal: "
.text
li $v0, 4 #loads prompt
la $a0, prompt #asks user to enter integer
syscall
li $v0, 5 #user input
syscall
add $t0, $v0, $0
li $v0, 4 #prints address of inbin
la $a0, inbin
syscall
li $v0, 35
add $a0, $t0, $0
syscall
li $v0, 4 #prints address of inhex
la $a0, inhex
syscall
li $v0, 34
add $a0, $t0, $0
syscall
andi $t0, $t0, 0xF00
srl $t0, $t0, 8
li $v0, 4 #prints address of outbin
la $a0, outbin
syscall
li $v0, 35
add $a0, $t0, $0
syscall
li $v0, 4 #prints address of outhex
la $a0, outhex
syscall
li $v0, 34
add $a0, $t0, $0
syscall

