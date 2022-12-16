.data
strp: .asciiz "------------Un=U(n-1)+U(n-2)------------\n"
str1: .asciiz "Please enter an integer number.\nn="
str2: .asciiz "The reasult : "
space: .asciiz " - "
.text
main:
#print strings
la $a0,strp
li $v0,4
syscall
la $a0,str1
li $v0,4
syscall
#read an integer number n into t3
li $v0,5
syscall
move $t3,$v0
#print a string
la $a0,str2
li $v0,4
syscall
#initialized values
li $t0,0
li $t1,1
li $t2,1
#--------------
move $a0,$t1
li $v0,1
syscall
bne $t3,0,then
j end
then:
loop:

move $t4,$t1
add $t1,$t1,$t0
move $t0,$t4
la $a0,space
li $v0,4
syscall
move $a0,$t1
li $v0,1
syscall

addi $t2,1
ble $t2,$t3,loop
end:
#exit
li $v0,10
syscall
