.data

.text
.globl main

main:
#t0 = c
#t1 = n
#t2 = f

li $t2, 1 # Carga 1 en f
li $t0, 1 # Carga 1 en c
li $t1, 5 # Carga el numero a factorear


loop:
bgt $t0, $t1, print # if c >= n jump exit(fin del ciclo)

#  f = f * c;
mult  $t2, $t0  #Multiplica t2, t0
mflo  $t2   # lo guarda en t2

addi  $t0, $t0, 1  # Suma 1 a C cada vez que se itera el ciclo
j loop #reitera el ciclo

# Imprime F
li $v0, 1
move $a0, $t2
syscall # Imprime t2

print:
# Imprime F
li $v0, 1
move $a0, $t2
syscall # Imprime t2

exit:
li $v0, 10
syscall
