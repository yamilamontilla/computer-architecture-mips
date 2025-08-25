.data
# int x, y;
	x: .space 4
	y: .space 4
.text
# int main (void) {
main:
	lw $t0, x
	li $t1, 0xFFFFFFFF
#     y = (x ^ 0xFFFFFFFF) + 1;
	xor $t0, $t0, $t1
	addi $t2, $t0, 1
	sw $t2, y
#     return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: