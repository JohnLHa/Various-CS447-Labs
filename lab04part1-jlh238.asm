.data
msg1: .asciiz "Please enter your string:\n"
msg2: .asciiz "Please enter the chracter to replace:\n"
msg3: .asciiz "Here is the output: "
newLine: .asciiz "\n"
userString: .space 64
userChar: .space 2

.text
li $t3, 126

la $a0, msg1
li $v0, 4
syscall
la $a0, userString
li $a1, 64
li $v0, 8
syscall
la $a0, msg2
li $v0, 4
syscall
la $a0, userChar
li $a1, 2
li $v0, 8
syscall
la $a0, newLine
li $v0, 4
syscall
jal ReplaceLetterWithTilde
jal invertCase
la $a0, msg3
li $v0, 4
syscall
la $a0, userString
li $v0, 4
syscall
li $v0, 10
syscall

ReplaceLetterWithTilde:
li $t0, 0
L1:
lb $t1, userString($t0)
lb $t2, userChar($0)
beq $t2, $t1, L2
addi $t0, $t0, 1
beq $t1, $zero, end
bne $t2, $t1, L1
L2:
addi $t1, $t1, 1
bne $t1, $t3, L2
sb $t1, userString($t0)
j L1

invertCase:
li $t0, 0
li $t4, 90
li $t5, 97
loop:
lb $t1, userString($t0)
beq $t1, $zero, end
beq $t1, 126, one
ble $t1, $t4, convertToLower
bge $t1, $t5, convertToUpper
convertToLower:
addi $t1, $t1, 32
sb $t1, userString($t0)
addi $t0, $t0, 1
j loop
convertToUpper:
addi $t1, $t1, -32
sb $t1, userString($t0)
addi $t0, $t0, 1
j loop

one:
addi $t0, $t0, 1
j loop

end:
jr $ra
