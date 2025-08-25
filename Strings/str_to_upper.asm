.data
# char string[32];
# register int i;
#register char caracter;
	string:		.space 32
.text
# int main (void) {
main:
#    i = 0;
	li $t0, 0
	la $s0, string
#     while ( (caracter = string[i]) != ’\0’ ) {
while:
	addu $t1, $t0, $s0
	lb $t2, 0($t1)
	beqz $t2, end_while
#         if ( (caracter >= ’a’) && (caracter <= ’z’) )
if:
	li $t3, 97
	li $t4, 122
	blt $t2, $t3, end_if
	bgt $t2, $t4, end_if
#             string[i] = caracter -’a’ + ’A’;
	sub $t5, $t2, $t3
	addi $t5, $t2, 65 
	sb $t5, 0($t1)
#    }
end_if:
# 	      i++;
	addi $t0, $t0, 1
	j while
end_while:
#     return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: