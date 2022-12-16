.data
strt: .asciiz "Please enter an ineger number.\nX="
stre: .asciiz "The number is even."
stro: .asciiz "The number is odd."
.text

printint:
li $v0,1
syscall
jr $ra
printstr:
li $v0,4
syscall
jr $ra
readint:
li $v0,5
syscall
jr $ra
exit:
li $v0,10
syscall
jr $ra

main:

la $a0,strt
jal printstr
jal readint
move $t0,$v0
li $t1,2
div $t0,$t1
mfhi $t2
beq $t2,0,then
la $a0,stro
jal printstr
j end
then:
la $a0,stre
jal printstr
end:


jal exit