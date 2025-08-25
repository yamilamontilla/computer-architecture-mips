.data
# int x, y, xb, yb, zb;
	x: .space 4
	y: .space 4
	xb: .space 4
	yb: .space 4
	zb: .space 4
.text
# int main (void) {
main:
	lw $t0, x
	lw $t1, y
	lw $t2, xb
	lw $t3, yb
#     zb = (x <= y) || (xb & yb);
	sle $t0, $t0, $t1
	and $t2, $t2, $t3
	sne $t5, $t2, $zero   # $t5 = ($t2 != 0) ? 1 : 0
	or  $t4, $t0, $t5     # $t4 = ($t0 || $t5)
	sw $t4, zb
#    return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: