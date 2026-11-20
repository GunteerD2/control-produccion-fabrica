.data
produccion:   .word 24
              .space 20
registro:     .word 40
              .space 20
estado:       .word 0

.text
.globl main

main:
    la   $s6, produccion
    la   $s7, registro
    la   $s0, estado

    lw   $t2, 0($s6)
    add  $t3, $t2, $t2
    sub  $t4, $t3, $t2

    add  $t5, $t2, $t3
    addi $t2, $zero, 10

    add  $t6, $t3, $t4
    sub  $t6, $t3, $t2

    add  $t7, $t3, $t4
    sub  $t8, $t3, $t4

    lw   $t9, 0($s7)
    add  $t0, $t7, $t8

    beq  $t0, $zero, CERO
    addi $t1, $zero, 303

    sw   $t1, 0($s0)
    j    FIN

CERO:
    addi $t1, $zero, 0
    sw   $t1, 0($s0)

FIN:
    li   $v0, 10
    syscall