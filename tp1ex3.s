.data
A: .float 15.4
B: .float 35.2
str: .asciiz "the sum of A=15.4 and B=35.2 is:"
.text

printstr:
li $v0,4
syscall
jr $ra
printfloat:
li $v0,2
syscall
jr $ra
exit:
li $v0,10
syscall
jr $ra
main:
l.s $f0,A
l.s $f2,B
add.s $f12,$f0,$f2
la $a0,str
jal printstr
jal printfloat


jal exit