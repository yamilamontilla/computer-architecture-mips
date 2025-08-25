.data
# int digitos;
# register int i;
# char string[32];
# register char caracter;
	digitos:	.space 4
	string:		.space 32
.text
# int main (void) {
main:
	la $s0, string
#     digitos = 0;
	li $s1, 0
#     i = 0;
	li $t0, 0
#    while ( (caracter = string[i]) != ’\0’ ) {
while:
	addu $t1, $t0, $s0
	lb $t2, 0($t1)
	beqz $t2, end_while
#        if ( (caracter >= ’0’) && (caracter <= ’9’) )
if:
	li $t3, 48
	li $t4, 57
	blt $t2, $t3, end_if
	bgt $t2, $t4, end_if
#            digitos++;
	addi $s1, $s1, 1
end_if:
#        i++;
	addi $t0, $t0, 1
	j while
#    }
end_while:
	sw $s1, digitos
#    return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: