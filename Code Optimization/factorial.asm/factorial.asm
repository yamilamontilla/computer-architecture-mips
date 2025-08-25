.text
# int factorial (int n) {
factorial:
#    int i, f;
#    f = 1;
	lw $t0, 1
#    i = 1;
	lw $t1, 1
#    while (i < n) {
while:
	bge $t1, $a0, end_while
#        i = i + 1;
	addi $t1, $t1, 1
#        f = f * i;
	mul $t0, $t0, $t1
	j while
#    }
end_while:
#    return f;
	move $v0, $t0
	jr $ra
# }
end_factorial: