.data
# #define N 8
# int X[N], Y[N];
# register int i;
	N:	.word 8
	x:	.space 32
	y:	.space 32
.text
# int main (void) {
main:
	lw $s0, N
	la $s1, x
	la $s2, y
#     Y[0] = X[0];
	lw $t2, 0($s1)
	sw $t2, 0($s2)
#     i = 1;
	li $t0, 1
#    while (i < N){
while:
	bge $t0, $s0, end_while
	subi $t1, $t0, 1
#         Y[i] = Y[i-1] + X[i];
	mul $t3, $t0, 4
	addu $t4, $s1, $t3
	lw $t5, 0($t4)
	mul $t6, $t1, 4
	addu $t7, $s2, $t6
	lw $t8, 0($t7)
	addu $t9, $t5, $t8
	addu $s3, $s2, $t3
	sw $t9, 0($s3)
#        i++;
	addi $t0, $t0, 1
	j while
#    }
end_while:
#    return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: