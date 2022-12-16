.data
stra: .asciiz "a="
strb: .asciiz "b="
strr: .asciiz "a+b="
.text
#functions
exit:
li $v0,10
syscall
jr $ra
addition:
add $a0,$t0,$t1
jr $ra
printint:
li $v0,1
syscall
jr $ra
readint:
li $v0,5
syscall
jr $ra
printstr:
li $v0,4
syscall
jr $ra
main:

la $a0,stra
jal printstr
jal readint
move $t0,$v0
la $a0,strb
jal printstr
jal readint
move $t1,$v0
la $a0,strr
jal printstr
jal addition
jal printint

jal exit