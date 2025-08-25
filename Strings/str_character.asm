.data
# int veces;
# char string[32], caracter;
# register int i;
	veces:		.space 4
	string:		.space 32
	caracter:	.byte 0
.text
# int main (void) {
main:
#    veces = 0;
	li $s0, 0
#    i = 0;
	li $t0, 0
	la $s1, string
	lb $s2, caracter
#    while (string[i] != ‘\0’) {
while:
	addu $t1, $t0, $s1
	lb $t2, 0($t1)
	beqz $t2, end_while
#        if (string[i] == caracter)
if:
	bne $t2, $s2, end_if
#            veces++;
	addi $s0, $s0, 1
end_if:
#        i++;
	addi $t0, $t0, 1
	j while
#    }
end_while:
	sw $s0, veces
#    return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: