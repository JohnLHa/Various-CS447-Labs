#John Ha
#jlh238@pitt.edu
.data
prompt: .asciiz "Welcome to Auto Coder!\nThe opcode (1-9 : 1=add, 2=addi, 3=or, 4=ori, 5=lw, 6=sw, 7=j, 8=beq, 9=bne)\n"
ask1: .asciiz "please enter the 1st opcode: "
ask2: .asciiz "please enter the 2nd opcode: "
ask3: .asciiz "please enter the 3rd opcode: "
ask4: .asciiz "please enter the 4th opcode: "
ask5: .asciiz "please enter the 5th opcode: "
inputNum: .word 24
opCode: .asciiz "add", "addi", "or", "ori", "lw", "sw", "j", "beq", "bne"
opCode1: .asciiz "add", "addi", "or", "ori", "lw", "sw", "j", "beq", "bne"
registers: .asciiz "$t0", "$t1", "$t2", "$t3", "$t4", "$t5", "$t6", "$t7", "$t8", "$t9"
completeCode: .asciiz "The completed code is \n\t"
nextLine: .asciiz "\n"
space: .asciiz " "
comma: .asciiz ", "
tab: .asciiz "\t"
letterL: .asciiz "L"
colon: .asciiz ":   "
paran1: .asciiz "("
paran2: .asciiz ")"

.text
la $t0, registers
la $t1, inputNum
li $t8, 100 #intermediate count
li $t9, 100 #instruction count
li $t2, 0 #counter for inputNum
li $t4, 0 #counter for registers
la $t7, opCode1($0)

la $a0, prompt
li $v0, 4
syscall
la $a0, ask1
li $v0, 4
syscall
li $v0 5
syscall
sw $v0, 0($t1)
la $a0, ask2
li $v0, 4
syscall
li $v0 5
syscall
sw $v0, 4($t1)
la $a0, ask3
li $v0, 4
syscall
li $v0 5
syscall
sw $v0, 8($t1)
la $a0, ask4
li $v0, 4
syscall
li $v0 5
syscall
sw $v0, 12($t1)
la $a0, ask5
li $v0, 4
syscall
li $v0 5
syscall
sw $v0, 16($t1)

test:
la $a0, nextLine
li $v0, 4
syscall

lw $t3, inputNum($t2)
beq $t3, 1, L101
beq $t3, 2, L102
beq $t3, 3, L103
beq $t3, 4, L104
beq $t3, 5, L105
beq $t3, 6, L106
beq $t3, 7, L107
beq $t3, 8, L108
beq $t3, 9, L109

L101:#add function
la $a0, tab
li $v0, 4
syscall
la $a0, 0($t7)#prints name
li $v0, 4
syscall
la $a0, space
li $v0, 4
syscall
addi $t5, $t4, 4
addi $t6, $t5, 4
la $a0, registers($t6)
li $v0, 4
syscall
la $a0, comma
li $v0, 4
syscall
la $a0, registers($t4)
li $v0, 4
syscall
la $a0, comma
li $v0, 4
syscall
la $a0, registers($t5)
li $v0, 4
syscall
addi $t4, $t4, 8
addi $t2, $t2, 4
addi $t9, $t9, 1
beq $t2, 20, exit
j test

L102:#addi function
la $a0, tab
li $v0, 4
syscall
la $a0, 4($t7)#prints name
li $v0, 4
syscall
la $a0, space
li $v0, 4
syscall
addi $t5, $t4, 4
la $a0, registers($t5)
li $v0, 4
syscall
la $a0, comma
li $v0, 4
syscall
la $a0, registers($t4)
li $v0, 4
syscall
la $a0, comma
li $v0, 4
syscall
la $a0, ($t8)
li $v0, 1
syscall
addi $t4, $t4, 4
addi $t2, $t2, 4
addi $t8, $t8, 1
addi $t9, $t9, 1
beq $t2, 20, exit
j test

L103:#or function
la $a0, tab
li $v0, 4
syscall
la $a0, 9($t7)#prints name
li $v0, 4
syscall
la $a0, space
li $v0, 4
syscall
addi $t5, $t4, 4
addi $t6, $t5, 4
la $a0, registers($t6)
li $v0, 4
syscall
la $a0, comma
li $v0, 4
syscall
la $a0, registers($t4)
li $v0, 4
syscall
la $a0, comma
li $v0, 4
syscall
la $a0, registers($t5)
li $v0, 4
syscall
addi $t4, $t4, 8
addi $t2, $t2, 4
addi $t9, $t9, 1
beq $t2, 20, exit
j test

L104:#ori function
la $a0, tab
li $v0, 4
syscall
la $a0, 12($t7)#prints name
li $v0, 4
syscall
la $a0, space
li $v0, 4
syscall
addi $t5, $t4, 4
la $a0, registers($t5)
li $v0, 4
syscall
la $a0, comma
li $v0, 4
syscall
la $a0, registers($t4)
li $v0, 4
syscall
la $a0, comma
li $v0, 4
syscall
la $a0, ($t8)
li $v0, 1
syscall
addi $t4, $t4, 4
addi $t2, $t2, 4
addi $t8, $t8, 1
addi $t9, $t9, 1
beq $t2, 20, exit
j test

L105:#lw function
la $a0, letterL
li $v0, 4
syscall
la $a0, ($t9)
li $v0, 1
syscall
la $a0, colon
li $v0, 4
syscall
la $a0, 16($t7)#prints name
li $v0, 4
syscall
la $a0, space
li $v0, 4
syscall
addi $t5, $t4, 4
la $a0, registers($t5)
li $v0, 4
syscall
la $a0, comma
li $v0, 4
syscall
la $a0, ($t8)
li $v0, 1
syscall
la $a0, paran1
li $v0, 4
syscall
la $a0, registers($t4)
li $v0, 4
syscall
la $a0, paran2
li $v0, 4
syscall
addi $t4, $t4, 4
addi $t2, $t2, 4
addi $t8, $t8, 1
addi $t9, $t9, 1
beq $t2, 20, exit
j test

L106:#sw function
la $a0, letterL
li $v0, 4
syscall
la $a0, ($t9)
li $v0, 1
syscall
la $a0, colon
li $v0, 4
syscall
la $a0, 19($t7)#prints name
li $v0, 4
syscall
la $a0, space
li $v0, 4
syscall
addi $t5, $t4, 4
la $a0, registers($t5)
li $v0, 4
syscall
la $a0, comma
li $v0, 4
syscall
la $a0, ($t8)
li $v0, 1
syscall
la $a0, paran1
li $v0, 4
syscall
la $a0, registers($t4)
li $v0, 4
syscall
la $a0, paran2
li $v0, 4
syscall
addi $t4, $t4, 4
addi $t2, $t2, 4
addi $t8, $t8, 1
addi $t9, $t9, 1
beq $t2, 20, exit
j test

L107:#j function
la $a0, letterL
li $v0, 4
syscall
la $a0, ($t9)
li $v0, 1
syscall
la $a0, colon
li $v0, 4
syscall
la $a0, 22($t7)#prints name
li $v0, 4
syscall
la $a0, space
li $v0, 4
syscall
la $a0, letterL
li $v0, 4
syscall
addi $t5, $t9, -1
la $a0, ($t5)
li $v0, 1
syscall
addi $t2, $t2, 4
addi $t4, $t4, 4
addi $t9, $t9, 1
beq $t2, 20, exit
j test

L108:#beq function
la $a0, tab
li $v0, 4
syscall
la $a0, 24($t7)#prints name
li $v0, 4
syscall
la $a0, space
li $v0, 4
syscall
addi $t5, $t4, 4
la $a0, registers($t5)
li $v0, 4
syscall
la $a0, comma
li $v0, 4
syscall
la $a0, registers($t4)
li $v0, 4
syscall
la $a0, comma
li $v0, 4
syscall
la $a0, letterL
li $v0, 4
syscall
addi $t6, $t9, -1
la $a0, ($t6)
li $v0, 1
syscall
addi $t4, $t4, 4
addi $t2, $t2, 4
addi $t9, $t9, 1
beq $t2, 20, exit
j test

L109:#bne function
la $a0, tab
li $v0, 4
syscall
la $a0, 28($t7)
li $v0, 4
syscall
la $a0, space
li $v0, 4
syscall
addi $t5, $t4, 4
la $a0, registers($t5)
li $v0, 4
syscall
la $a0, comma
li $v0, 4
syscall
la $a0, registers($t4)
li $v0, 4
syscall
la $a0, comma
li $v0, 4
syscall
la $a0, letterL
li $v0, 4
syscall
addi $t6, $t9, -1
la $a0, ($t6)
li $v0, 1
syscall
addi $t4, $t4, 4
addi $t2, $t2, 4
addi $t9, $t9, 1
beq $t2, 20, exit
j test

exit:
li $v0, 10
syscall


