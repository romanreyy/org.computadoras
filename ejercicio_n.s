.data
msj: .asciiz " Numero que desea ingresar: \n" 

.text
main: 
    li $v0, 4
    la $a0, msj
    syscall
    li $v0, 5
    syscall
    move $s0, $v0
loop: 
    beq $s0, $zero, exit
    add $s1, $s1, $s0
    li $v0, 4
    la $a0, msj
    syscall
    li $v0, 5
    syscall 
    move $s0, $v0
    j loop

exit:
    li $v0, 1
    move $a0, $s1
    syscall
    li $v0, 10
    syscall