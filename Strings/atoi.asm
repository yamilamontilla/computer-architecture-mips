.data
# int numero;
# char string[10];
# register int i, cifra;
	numero:		.space 4
	string:		.space 10
.text
# int main (void) {
main:
	la $s0, string
#     numero = 0;
	li $s1, 0
#     i = 0;
	li $t0, 0
#     while ( (cifra = string[i]) != �\0� ) {
while:
	addu $t1, $t0, $s0
	lbu $t2, 0($t1)
	beqz $t2, end_while
#         numero = numero * 10 + (cifra-'0');
	mul $s1, $s1, 10
	addi $t3, $t2, -48
	add $s1, $s1, $t3
#         i = i + 1;
	addi $t0, $t0, 1
	j while
#     }
end_while:
	sw $s1, numero
#     return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: