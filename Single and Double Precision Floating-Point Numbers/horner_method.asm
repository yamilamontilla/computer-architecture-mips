.data
# int grado;
# float polinomio[10], x0, valor;
# register int i;
	grado:			.space 4
	polinomio:		.space 40
	x0:			.float 0.0
	valor:			.float 0.0
.text
# int main (void) {
main:
	la $t0, polinomio
	lw $t1, grado # grado
#    valor = polinomio[grado];
	mul $t2, $t1, 4
	addu $t3, $t2, $t0
	l.s $f0, 0($t3) # f0 --> valor
#    i = grado - 1;
	addi $t4, $t1, -1
#    while (i >= 0) {
while:
	bltz $t4, end_while
#        valor = valor * x0 + polinomio[i];
	l.s $f20, x0
	mul.s $f2, $f0, $f20
	mul $t5, $t4, 4
	addu $t6, $t5, $t0
	l.s $f1, 0($t6)
	add.s $f0, $f2, $f1
#        i--;
	addi $t4, $t4, -1
	j while
#    }
end_while:
	s.s $f0, valor
#    return(0);
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: