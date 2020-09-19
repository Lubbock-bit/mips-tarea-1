.data

.text
.globl main

main:
li $t0, 2 # Carga 2 en t0
li $t1, 2 # Carga 2 en t1

mult  $t0, $t1      #  Multiplica t0 con t1
mflo  $t2          # guarda el valor de la multiplicacion en t2

li $v0, 1
move $a0, $t2
syscall # Imprime t2


exit:
li $v0, 10
syscall
