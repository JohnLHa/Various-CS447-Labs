.data
Array_A: .word 0xa1a2a3a4, 0xa5a6a7a8
prompt: .asciiz "Please enter element type ( 'w' -word, 'h' -half, 'b' -byte): \n"
output: .asciiz "\nHere is the output (\naddress, value in hexadecimal, value in decimal): \n"
space: .asciiz ", "
.text
la $a1, Array_A #loads array in a register
li $t4, 1
li $t6, 0x10010000 #intiial address
move $t5, $a1 #moves array in t register

addi $t1, $t1, 0x77#creates comparison values
addi $t2, $t2, 0x68
addi $t3, $t3, 0x62

li $v0, 4 #prompts the user for a character
la $a0, prompt
syscall
li $v0, 12 #reads in the character
syscall

add $t0, $v0, $0 #creates comparison for branching
beq $t0, $t1, L1
beq $t0, $t2, L2
beq $t0, $t3, L3

L1:#call for word
li $v0, 4 #prints the text for incoming output
la $a0, output
syscall
li $v0, 34 #prints the address value
move $a0, $t6
syscall
li $v0, 4 #formatting space between numbers
la $a0, space
syscall
li $v0, 34 #prints the values in hexadecimal
lw $t4, ($t5)
move $a0, $t4
syscall
li $v0, 4 #formatting space between numbers
la $a0, space
syscall
li $v0, 1 #prints the values in decimal
lw $t4, ($t5)
move $a0, $t4
syscall
addi $t6, $t6, 4 #moves 4 offsets down address
addi $t5, $t5, 4 #moves 4 offsets down array
bne $t4, 0xa5a6a7a8, L1#cancels loop once end of array is reached
j L4

L2:#call for half word
li $v0, 4#prints the text for incoming output
la $a0, output
syscall
li $v0, 34 #prints the address value
move $a0, $t6
syscall
li $v0, 4 #formatting space between numbers
la $a0, space
syscall
li $v0, 34 #prints the values in hexadecimal
lhu $t4, ($t5)
move $a0, $t4
syscall
li $v0, 4 #formatting space between numbers
la $a0, space
syscall
li $v0, 1 #prints the values in decimal
lhu $t4, ($t5)
move $a0, $t4
syscall
addi $t5, $t5, 2 #moves 2 offsets
addi $t6, $t6, 2 #moves 2 offsets down address
bne $t4, 0xa5a6, L2 #cancels loop once end of array is reached
j L4

L3:#call for byte
li $v0, 4 #prints the text for incoming output
la $a0, output
syscall
li $v0, 34 #prints the address value
move $a0, $t6
syscall
li $v0, 4 #formatting space between numbers
la $a0, space
syscall
li $v0, 34 #prints the values in hexadecimal
lbu $t4, ($t5)
move $a0, $t4
syscall
li $v0, 4 #formatting space between numbers
la $a0, space
syscall
li $v0, 1 #prints the values in decimal
lbu $t4, ($t5)
move $a0, $t4
syscall
addi $t5, $t5, 1 #moves 1 offset
addi $t6, $t6, 1 #moves 1 offsets down address
bne $t4, 0xa5, L3 #cancels loop once end of array is reached
j L4

L4:#ends program
li $v0, 10
syscall
