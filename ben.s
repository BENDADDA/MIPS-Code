.data
str1: .asciiz "enter an integer number:"
str2: .asciiz "n!="
.text
main:
la $a0,str1
li $v0,4
syscall
li $v0,5

syscall
move $t0,$v0
la $a0,str2
li $v0,4
syscall
li $t1,1
li $t2,1
loop:

mul $t2,$t2,$t1

addi $t1,$t1,1
ble $t1,$t0,loop

move $a0,$t2
li $v0,1
syscall

li $v0,10
syscall