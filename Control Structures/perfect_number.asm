.data
#int n, perfecto;
	n: .space 4
	perfecto: .space 4
#register int i, suma;
.text
#int main (void) {
main:
	lw $s0, n
#	suma = 1;
	li $t0, 1
#	i = 2;
	li $t1, 2
#	while (i < n) {
while:
	bgt $t1, $s0, end_while
#		if (n % i == 0)
if:
	div $s0, $t1
	mfhi $t2
	bnez $t2, end_if
#			suma = suma + i;
	add $t0, $t0, $t1
end_if:
#		i++;
	addi $t1, $t1, 1
	j while
#	}
end_while:
#	perfecto = (n == suma);
	seq $s1, $s0, $t0
	sw $s1, perfecto
#	return 0;
	li $v0, 17
	li $a0, 0
	syscall
#}
end_main: