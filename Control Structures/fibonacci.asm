.data
#int n, f;
	n: .space 4
	f: .space 4
#register int f1, f2, i;
.text
#int main (void) {
main:
	lw $s0, n
#          f2 = 0;
	li $t0, 0
#          f1 = 1;
	li $t1, 1
#          for (i = 2; i <= n; i++) {
	li $t2, 2
for:
	bge $t2, $s0, end_for
#      	        f = f1 + f2;
	add $s1, $t1, $t0
#                f2 = f1;
	move $t0, $t1
#                f1 = f;
	move $t1, $s1
	addi $t2, $t2, 1
	j for
#          }
end_for:
	sw $s1, f
#          return 0;
	li $v0, 17
	li $a0, 0
	syscall
#}
end_main: