.data
# #define N 8
# int X[N], Y[N], Z[N];
# register int i, temp1, temp2;
	N:	.word 8
	x:	.space 32
	y:	.space 32
	z:	.space 32
.text
# int main (void) {
main:
	lw $s0, N
	la $s1, x
	la $s2, y
	la $s3, z
#    i = 0;
	li $t0, $t0, 0
#    while (i < N) {
while:
	bge $t0, $s0, end_while
#        temp1 = X[i];
	mul $t1, $t0, 4
	addu $t2, $s1, $t1
	lw $t2, 0($t2) 
#        temp2 = Y[i];
	mul $t3, $t0, 4
	addu $t4, $s2, $t3
	lw $t4, 0($t4)
#        if (temp1 < temp2)
if:
	bge $t2, $t4, else
#            Z[i]=temp1;
	mul $t5, $t0, 4
	addu $t6, $s3, $t5
	sw $t2, 0($t6)
	j end_if
#        else
else:
#            Z[i]=temp2;
	mul $t5, $t0, 4
	addu $t6, $s3, $t5
	sw $t4, 0($t6)
end_if:
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