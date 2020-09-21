.data
nl: .asciiz "\n"

.text
.globl main

main:
li $t0, 0 #cargamos 0 en t0
li $t1, 1 #cargamos 1 en t1

li $v0, 1
move $a0, $t0
syscall # Imprime t0

li $v0, 4
la $a0, nl
syscall # Imprime \n

li $v0, 1
move $a0, $t1
syscall # Imprime t1

li $v0, 4
la $a0, nl
syscall # Imprime \n

#cargamos 18 en I
li $t3, 18
loop: # Inicia el loop
beq $t3, $zero, exit # if (i = 0) exit
add $t2, $t1, $t0 # C = B + A
# Imprimir C
li $v0, 1
move $a0, $t2
syscall # Imprime t2
li $v0, 4
la $a0, nl
syscall # Imprime \n

move $t0, $t1 # A = B
move $t1, $t2 # B = C
#Incrementar contador
add $t3, -1

j loop #reitera el loop

exit:
li $v0, 10 # Exit
syscall # Exit
