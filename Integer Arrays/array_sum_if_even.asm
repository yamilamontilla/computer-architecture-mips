.data
#define N 8
# int vector[N], suma;
# register int i, temp;
	.eqv N,8
	vector:	.space 32
	suma:	.space 4
.text
# int main (void) {
main:
	lw $s0, N
	la $s1, vector
#    suma = 0;
	li $s2, 0
#     i = 0;
	li $t0, 0
#    while (i < N) {
while1:
	bge $t0, $s0, end_while1
#        temp = vector[i];
	mul $t1, $t0, 4
	addu $t2, $t1, $s1
	lw $t3, 0($t2)
#        suma = suma + temp;
	add $s2, $s2, $t3
#        i++;
	addi $t0, $t0, 1
	j while1
#    }
end_while1:
	sw $s2, suma
#    if (suma % 2 == 0){
if:
	rem $t4, $s2, 2
	bnez $t4, end_if
#        i=0
	li $t0, 0
#	while (i < N) {
while2:
	bge $t0, $s0, end_while2
#            vector[i] = vector[i] + 1;
	mul $t5, $t0, 4
	addu $t6, $t5, $s1
	lw $t7, 0($t6)
	addi $t7, $t7, 1
	sw $t7, 0($t6)
#            i++;
	addi $t0, $t0, 1
	j while2
#	}    
end_while2:
#    }
end_if:
#    return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main:
