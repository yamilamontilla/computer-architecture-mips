.data
# int x, y, mcd, mcm;
	x: .space 4
	y: .space 4
	mcd: .space 4
	mcm: .space 4
# register int tmp, resto;
.text
# int main(void) {
main:
	lw $s0, x
	lw $s1, y
#	tmp = x;
	move $t0, $s0
#	mcd = y;
	move $s2, $s1
#	do {
do: 
#		resto = tmp % mcd;
	div $t0, $s2
	mfhi $t1
#		if (resto != 0) {
if:
	beqz $t1, end_if
#			tmp = mcd;
	move $t0, $s2
#			mcd = resto;
	move $s2, $t1
#		}
end_if:
#	} while (resto != 0);
while:
	bnez $t1, do
end_while:
#	mcm = x * y / mcd;
	mul $t2, $s0, $s1
	div $t2, $s2
	mflo $s3
	sw $s3, mcm
#	return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: