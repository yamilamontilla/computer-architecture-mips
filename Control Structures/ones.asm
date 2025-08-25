.data
# int dato, unos;
	dato: .space 4
	unos: .space 4
# register int tmp, mascara;
.text
# int main (void) {
main:
	lw $s0, dato
# 	unos = 0;
	li $s1, 0
#	tmp = dato;
	move $t0, $s0	# tmp = t0
#	mascara = 0x80000000;
	li $t1, 0x80000000	# mascara = t1
#	while (tmp != 0) {
while:
	beqz $t0, end_while
#		if (tmp & mascara != 0)
if:		
		and $t2, $t0, $t1
		beqz $t2, end_if
#			unos = unos + 1;
		addi $s1, $s1, 1
end_if:
#		tmp = tmp << 1;
		sll $t0, $t0, 1
		j while
#	}
end_while:
	sw $s1, unos
#	return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: