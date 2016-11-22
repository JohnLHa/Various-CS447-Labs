li $v0, 4
la $a0, x_msg #loads first prompt
syscall
li $v0, 5 #reads first int
syscall
move $t0, $v0 #moves first int into reg. #0
li $v0, 4 #loads second prompt
la $a0, y_msg
syscall
li $v0, 5 #reads second int
syscall
move $t1, $v0 #moves second int into reg. #1
sub $t2, $t0, $t1 #puts diff. into reg. #2
li $v0, 4 #loads first part of final message
la $a0, msg1
syscall
li $v0, 1 #loads first int
add $a0, $t0, $0
syscall
li $v0, 4 #loads second part of final message
la $a0, msg2
syscall
li $v0, 1 #loads second int
add $a0, $t1, $0
syscall
li $v0, 4 #loads third part of final message
la $a0, msg3
syscall
li $v0, 1 #loads difference of two ints
add $a0, $t2, $0
syscall
li $v0, 10 #exits program
syscall
.data
x_msg: .asciiz "What is the first value?\n"
y_msg: .asciiz "What is the second value?\n"
msg1: .asciiz "The difference between "
msg2: .asciiz " and "
msg3: .asciiz " is "
