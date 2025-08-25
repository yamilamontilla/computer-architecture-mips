.data
# #define N 8
# int x[N], y[N];
# register int i, j;
	N: 	.word 8
	x:	.space 32
	y:	.space 32
.text
# int main (void) {
main:
	lw $s0, N
	la $s1, x
	la $s2, y
#    i = 0;
	li $t0, 0
#    j = N-1;
	subi $t1, $s0, 1
#    while (i < N) {
while:
	bge $t0, $s0, end_while
#        y[j] = x[i];
	mul $t2, $t0, 4
	addu $t3, $s1, $t2
	lw $t4, 0($t3)
	mul $t5, $t1, 4
	addu $t6, $s2, $t5
	sw $t4, 0($t6)
#        i++;
	addi $t0, $t0, 1
#        j--;
	subi $t1, $t1, 1
#    }
end_while:
#    return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: