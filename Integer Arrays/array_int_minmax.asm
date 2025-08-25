.data
# #define N 8 --> $s0
# int v[N], maximo, minimo; --> $s1, $s2, $s3
# register int i, aux; --> $t0, $t1
	N:	.word 8
	v:	.space 32
	maximo:	.space 4
	minimo:	.space 4
.text
# int main (void) {
main:
	lw $s0, N
	la $s1, v
#    maximo = v[0];
	lw $s2, 0($s1)
	sw $s2, maximo
#    minimo = maximo;
	move $s3, $s2
	sw $s3, minimo
#    for (i = 1; i < N; i++) {
	li $t0, 1
for:
	bge $t0, $s0, end_for
#        aux = v[i];
	mul $t2, $t0, 4
	addu $t3, $s1, $t2
	lw $t1, 0($t3)
#        if (aux < minimo)
if:
	bgt $t1, $s3, else
#            minimo = aux;
	move $s3, $t1
	sw $s3, minimo
	j end_if
#        else if (aux > maximo)
else:
#            maximo = aux;
	move $s2, $t1
	sw $s2, maximo 
end_if:
	addi $t0, $t0, 1
	j for
#    }
end_for:
#    return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: