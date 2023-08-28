.data 
msj: .asciiz " es el valor absoluto \n"
.text 
main: 
    li $v0, 5
    syscall
    move $s0, $v0
    blt	$s0, $zero, change  # si el numero ingresado es menor a 0 ir a change para ser modificado

normal:
    li $v0, 1
    move $a0, $s0
    syscall
    li $v0, 4
    la $a0, msj
    syscall
    j exit 

change: 
    mul $s1, $s0, -1       # multiplicamos el numero ingresado por menos uno para pasarlo a positivo y mostrar el valor absoluto
    li $v0, 1
    move $a0, $s1
    syscall
    li $v0, 4
    la $a0, msj
    syscall

exit:
    li $v0, 10
    syscall