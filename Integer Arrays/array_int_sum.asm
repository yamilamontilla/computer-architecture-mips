.data
# int v1[8], v2[8]; --> N : $s0  v1: $s1  v2: $s2   
# register int i; --> $t0
	N:	.word 8
	v1:	.space 32
	v2:	.space 32
.text
# int main (void) {
main:
	lw $s0, N
	la $s1, v1
	la $s2, v2
#    i = 0;
	li $t0, 0
#    do {
do:
#        v1[i] = v1[i] + v2[i];
	lw $t1, 0($s1)
	lw $t2, 0($s2)
	addu $t3, $t1, $t2
	sw $t3, 0($s1)
#        i = i + 1;
	addi $t0, $t0, 1
	addi $s1, $s1, 4
	addi $s2, $s2, 4
#    } while (i != 8);
while:	
	bne $t0, $s0, do
#    return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: