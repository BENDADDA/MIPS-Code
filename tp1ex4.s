.data
message1: .asciiz "give an integer number:"
message2: .asciiz "the number that you have gave is:"
.text
#methods
printstr:
li $v0,4
syscall
jr $ra
printint:
li $v0,1
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
#main program 
main:
la $a0,message1
jal printstr
jal readint
move $t0,$v0
la $a0,message2
jal printstr
move $a0,$t0
jal printint

jal exit