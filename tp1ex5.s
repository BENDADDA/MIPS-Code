.data
message1: .asciiz "give a floating number:"
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
printfloat:
li $v0,2
syscall
jr $ra
readfloat:
li $v0,6
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
jal readfloat
la $a0,message2
jal printstr
mov.s $f12,$f0
jal printfloat

jal exit