.data
# int lon1, lon2, lon3, triang;
	lon1: .space 4
	lon2: .space 4
	lon3: .space 4
	triang: .space 4
# register int tmp1, tmp2, tmp3; // Temporales
.text
# int main(void) {
main:
	lw $s0, lon1
	lw $s1, lon2
	lw $s2, lon3
#      tmp1 = lon2 + lon3; tmp2 = lon1 + lon3; tmp3 = lon1 + lon2;
	add $t0, $s1, $s2 # tmp1
	add $t1, $s0, $s2 # tmp2
	add $t2, $s0, $s1 # tmp3
#      if ( (lon1<tmp1) && (lon2<tmp2) && (lon3<tmp3) )
if:
	slt $t3, $s0, $t0
	slt $t4, $s1, $t1
	slt $t5, $s2, $t2
	and $t6, $t3, $t4
	and $t6, $t6, $t5
	beqz $t6, else
#           triang = 1;
	li $s3, 1
	j end_if
#      else
else:
#            triang = 0;
	li $s3, 0
end_if:
	sw $s3, triang
#     return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: