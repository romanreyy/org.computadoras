.data
bisiesto: .asciiz "Es bisiesto \n"
normal: .asciiz "No es bisiesto \n"

.text
main:
    li $v0, 5
    syscall 
    move $s0, $v0
    rem $s1, $s0, 4         #$s1=$s0%4
    rem $s2, $s0, 100       #$s2=$s0%100
    rem $s3, $s0, 400       #$s3=$s0%400
    bne $s1, $zero, false   #ir a false si $s1≠0
    beq	$s2, $zero, false   #ir a false si $s1=0

true: 
    li $v0, 4
    la $a0, bisiesto
    syscall
    j exit     
    
false: 
    li $v0, 4
    la $a0, normal
    syscall

exit: 
    li $v0, 10
    syscall


