.data
str1 : .asciiz "donnez un nombre entier:"
str2 : .asciiz "la table de multipication du nombre donné est:\n"
produit: .asciiz"*"
entre: .asciiz "\n"
egal: .asciiz "="
.text
main:
la $a0,str1
li $v0,4
syscall
li $v0,5
syscall
move $t0,$v0 
move $t3,$t0
la $a0,str2
li $v0,4
li $t1,1
li $t2,10
loop:
move $a0,$t0
li $v0,1
syscall
la $a0,produit
li $v0,4
syscall
move $a0,$t1
li $v0,1
syscall
la $a0,egal
li $v0,4
syscall

move $a0,$t3
li $v0,1
syscall
add $t3,$t3,$t0
la $a0,entre
li $v0,4
syscall

addi $t1,$t1,1
ble $t1,$t2,loop 


li $v0,10
syscall