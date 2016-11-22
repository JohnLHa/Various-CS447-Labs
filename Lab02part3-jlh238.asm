.data
y: .byte 37
z: .byte 0
x: .byte 13
.text
la $t0, y
lb $t1, 0($t0)
lb $t2, 1($t0)
lb $t3, 2($t0)
add $t2, $t1, $t3
sb $t2, 1($t0)
sb $t2, 2($t0)
sb $t2, 0($t0)





