.data
# int x, y, maximo;
	x: .space 4
	y: .space 4
	maximo: .space 4
.text
# int main (void) {
main:
	lw $t0, x
	lw $t1, y
#       maximo = x;
	move $t2, $t0
#      if (maximo < y)
if:
	slt $t3, $t2, $t1
	beqz $t3, end_if
#            maximo = y;
	move $t2, $t1
end_if:
	sw $t2, maximo
#      return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: