.data
par: .asciiz "Es par \n"
impar: .asciiz "Es impar \n"

.text
main: 
    li $v0, 5
    syscall
    move $s0, $v0
    rem $s1, $s0, 2         # $s1=$s0%2
    beq $s1, $zero, true    # si $s1=0 entras en true 

false: 
    li $v0, 4
    la $a0, impar           # imprimir que es impar 
    syscall 
    j exit                  # ir a exit para salir del programa 

true: 
    li $v0, 4
    la $a0, par             # imprimir que es par
    syscall

exit: 
    li $v0, 10
    syscall