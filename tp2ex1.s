.data
message: .asciiz "Enter an integer number:"
endl: .asciiz "\n"
.text
#methods
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
exit:
li $v0,10
syscall
jr $ra
#main porgram
main:
la $a0,message
jal printstr
jal readint
move $t1,$v0
li $t0,1
loop:
move $a0,$t0
jal printint
la $a0,endl
jal printstr
addi $t0,$t0,1
ble $t0,$t1,loop

jal exit