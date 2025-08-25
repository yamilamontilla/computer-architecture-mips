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
#      if (x >= y)
if:
	sge $t2, $t0, $t1
	beqz $t2, else
#            maximo = x;
	move $t3, $t0
	j end_if
#      else
else:
#            maximo = y;
	move $t3, $t1
end_if:
	sw $t3, maximo
#      return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: