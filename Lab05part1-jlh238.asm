.data
promptn: .asciiz "Please enter a number n:\n"
promptk: .asciiz "Please enter another number k:\n"
answer: .asciiz "The value of choose is "
.text
la $a0, promptn
li $v0, 4
syscall
li $v0, 5
syscall
add $s0, $s0, $v0
la $a0, promptk
li $v0, 4
syscall
li $v0, 5
syscall
add $s1, $s1, $v0
la $t0, 0($s0)
la $t1, 0($s1)
jal choose

la $a0, 0($t2)
li $v0, 1
syscall
li $v0, 10
syscall

choose:#can't figure out how to traverse the tree correctly
addi $sp, $sp, -12
sw $t0, 0($sp)
sw $t1, 4($sp)
sw $ra, 8($sp)
beq $t0, $t1, equal
beq $t1, $zero, equalzero
blt $t0, $t1, lessthan
blt $t1, $t0, recurse
li $v0, 0
addi $sp, $sp, 12
jr $ra

equal: 
addi $t2, $t2, 1
jr $ra

equalzero:
addi $t2, $t2, 1
jr $ra

lessthan:
addi $t2, $t2, 1
jr $ra

recurse:
addi $t0, $t0, -1
addi $t1, $t1, -1
jal choose
lw $t0, 0($sp)
lw $t1, 4($sp)
lw $ra, 8($sp)
addi $sp, $sp, 12
addi $t1, $t1, 1
jal choose
lw $t0, 0($sp)
lw $t1, 4($sp)
lw $ra, 8($sp)
addi $sp, $sp, 12
jr $ra

crap:
addi $t1, $t1, -1
jal choose
lw $t0, 0($sp)
lw $t1, 4($sp)
lw $ra, 8($sp)
addi $sp, $sp, 12
jr $ra

