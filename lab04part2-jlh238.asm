.data 
types: .asciiz "bit", "nybble", "byte", "half", "word"
bits: .asciiz "one", "four", "eight", "sixteen", "thirty-two"
prompt: .asciiz "Please enter a datatype\n"
response: .asciiz "Number of bits: "
error: .asciiz "\nNot found!"
userAns: .space 64
.text

la $a0, prompt
li $v0, 4
syscall
la $a0, userAns
la $a1, 64
li $v0, 8
syscall
la $a0, response
li $v0, 4
syscall

li $t0, 0
la $t1, types
la $t2, 0($t1) 
j CheckType


CheckType:
lb $t3, userAns($t0)
beq $t2, $t3, label
#honestly no idea how to get the types, byte by byte. whenever I load up $t2, it gets the whole word "bit"
#so, I can't really compare it to just the "b" or whatever the user input is.

label:
la $a0, error
li $v0, 4
syscall
la $v1, 10
syscall