.data
# int n, tn;
	n: .space 4
	tn: .space 4
# register int i;
.text
# int main (void) {
main:
	lw $s0, n
#    tn = 1;
	li $s1, 1
#    for (i = 1; i <= n; i++) {
	li $t0, 1
for:
	bgt $t0, $s0, end_for
#        tn = 2 * tn;
	mul $s1, $s1, 2
#        if (i % 2 == 0)
if: 
	li $t1, 2
	div $t0, $t1
	mfhi $t2
	bnez $t2, end_if
#                tn = tn - 1;
	subi $s1, $s1, 1
end_if:
	addi $t0, $t0, 1
	j for
#    }
end_for:
	sw $s1, tn
#    return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: