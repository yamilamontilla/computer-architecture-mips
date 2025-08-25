.data
# #define N 8 --> $s0
# int x[N], y[N]; --> $s1 , $s2
# register int i; --> $t0
	N: .word 8
	x: .space 32
	y: .space 32
.text
# int main (void) {
main:
	lw $s0, N
	la $s1, x
	la $s2, y
#    for (i = 0; i < N; i++)
	li $t0, 0
for:
	bge $t0, $s0, end_for
#        y[i] = x[i];
	lw $t1, 0($s1)
	sw $t1, 0($s2)
	addi $t0, $t0, 1
	addi $s1, $s1, 4
	addi $s2, $s2, 4
	j for
end_for:
#    return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main:
