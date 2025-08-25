.data
# int x, y, z, w;
x: 	.space 4
y: 	.space 4
z: 	.space 4
w: 	.space 4
.text
# int main (void) 
main:
#    w = x - y * (z+2);
	lw $t0, x
	lw $t1, y
	lw $t2, z
	addi $t2, $t2, 2
	mul $t1, $t1, $t2
	sub $t3, $t0, $t1
	sw $t3, w
#    return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: