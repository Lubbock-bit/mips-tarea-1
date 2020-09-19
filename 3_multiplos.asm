.data
 nl: .asciiz "\n"

.text
.globl main

# s0 -> i (contador)
# s1 -> maximo para el loop
# s2 -> acumula el resto de 3 o de 5
li $s0, 1
li $s1, 101

loop:
beq $s0, $s1, exit
# chequeamos que s0 sea divisible por 3
rem $s2, $s0, 3 # resto3 = i % 3
beq $s2, $zero, print

# chequeamos que s0 sea divisible por 5
rem $s2, $s0, 5 # resto5 = i % 5
beq $s2, $zero, print


print:
#imprimir valor de s0 y \n
li $v0, 1
move $a0, $s0
syscall # Imprime el valor de s0

li $v0, 4
la $a0, nl
syscall # Imprime el string \
# Termina de imprimir

endprint:
addi $s0, $s0, 1
j loop #Reitera el loop

exit:
li $v0, 10
syscall #sale del programa
