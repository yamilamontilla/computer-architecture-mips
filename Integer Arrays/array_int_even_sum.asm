.data
# #define N 16
# int vector[N], suma;
# register int i, temp;
	N: 	.word 16
	vector:	.space 64
	suma:	.space 4
.text
# int main (void) {
main:
	lw $s0, N
	la $s1, vector
#    suma = 0;
	li $s2, 0
	sw $s2, suma
#    i = 0;
	li $t0, 0
#    while (i < N) {
while:
	bgt $t0, $s0, end_while
#        temp = vector[i];
	mul $t3, $t0, 4
	addu $t4, $s1, $t3
	lw $t5, 0($t4)
#        if (temp % 2 == 0)
if:
	andi $t6, $t5, 1
	bnez $t6, end_if
#            suma = suma + temp;
	add $s2, $s2, $t1
end_if:
#        i++;
	addi $t0, $t0, 1
	j while
#    }
end_while:
	sw $s2, suma
#    return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: