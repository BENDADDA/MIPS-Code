.data
strx: .asciiz "Enter the base where x="
strn: .asciiz "Enter the power where n="
strr: .asciiz "Result="
endl: .asciiz "\n"
.text

main:

#print the string
la $a0,strx
li $v0,4
syscall

#read an interger
li $v0,5
syscall
move $t0,$v0

#print the string
la $a0,strn
li $v0,4
syscall

#read an integer
li $v0,5
syscall
move $t1,$v0

#decalre values
li $t2,1
li $t3,1
#calculation of x power n
bne $t1,0,then
j end
then:
loop:

mul $t3,$t3,$t0

addi $t2,$t2,1
ble $t2,$t1,loop
#------------------------------
#print the result
end:
la $a0,strr
li $v0,4
syscall
move $a0,$t3
li $v0,1
syscall


#exit
li $v0,10
syscall