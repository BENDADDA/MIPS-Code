.data
strp: .asciiz "------------Un=U(n-1)+U(n-2)------------\n"
str1: .asciiz "Please enter an integer number.\nn="
str2: .asciiz "The reasult : "
space: .asciiz " - "
.text
#functions
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

printint:
li $v0,1
syscall
jr $ra
main:
#print strings
la $a0,strp
jal printstr
la $a0,str1
jal printstr
#read an integer number n into t3
jal readint
move $t3,$v0
#print a string
la $a0,str2
jal printstr
#initialized values
li $t0,0
li $t1,1
li $t2,1
#--------------
move $a0,$t1
jal printint

bne $t3,0,then
j end
then:
loop:

move $t4,$t1
add $t1,$t1,$t0
move $t0,$t4
la $a0,space
jal printstr
move $a0,$t1
jal printint

addi $t2,1
ble $t2,$t3,loop
end:

#exit
jal exit
