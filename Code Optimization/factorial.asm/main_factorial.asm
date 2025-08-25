.data
# int n, v;
	n:	.space 4
	v:	.space 4
.text
# int main (void) {
main:
	lw $t0, n
#     if (n >= 0) {
if:
	bltz $t0, else
#         v = factorial(n);
	move $a0, $t0
	jal factorial
	sw $v0, v
#         return 0;
	li $v0, 17
	li $a0, 0
	syscall
#     }
#     else
else:
#        return -1;
	li $v0, 17
	li $a0, -1
	syscall
# }
end_main: