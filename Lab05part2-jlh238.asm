.data
prompt1: .asciiz "Please enter the first string:\n"
prompt2: .asciiz "Please enter the second string:\n"
answer1: .asciiz "The sum of "
answer2: .asciiz "and "
answer3: .asciiz "is "
string1: .space 64
string2: .space 64
.text
la $a0, prompt1
li $v0, 4
syscall
la $a0, string1
la $a1, 64
li $v0 8
syscall
la $a0, prompt2
li $v0, 4
syscall
la $a0, string2
la $a1, 64
li $v0 8
syscall
jal combine
la $a0, string1
li $v0, 4
syscall
li $v0, 10
syscall

combine: #changes most significant bit. not least. still figuring that out before moving on.
li $t0, 0
lb $t1, string1($t0)
lb $t2, string2($t0)
addi $t1, $t1, 1
sb $t1, string1($t0)
jr $ra