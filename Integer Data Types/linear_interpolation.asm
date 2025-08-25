.data
# int x1, y1, x2, y2, xp, yp;
	x1: .space 4
	y1: .space 4
	x2: .space 4
	y2: .space 4
	xp: .space 4
	yp: .space 4
.text
# int main (void) {
main:
	lw $t0, x1 # x1 = t0
	lw $t1, x2 # x2 = t1
	lw $t2, y1 # y1 = t2
	lw $t3, y2 # y2 = t3
	lw $t4, xp # xp = t4
#     yp = ((xp-x1) * (y2-y1)) / (x2-x1) + y1;
	sub $t4, $t4, $t0
	sub $t3, $t3, $t2
	mul $t4, $t4, $t3
	sub $t1, $t1, $t0
	div $t4, $t4, $t1
	add $t5, $t4, $t2
	sw $t5, yp # yp = t5
#     return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: