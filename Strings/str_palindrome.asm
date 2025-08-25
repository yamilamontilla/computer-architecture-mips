.data
	string: 	.space 32
	palin:		.byte 0
.text
main:
	la $s0, string # --> ini
	move $s1, $s0 # --> fin
while1:
	lbu $t0, 0($s1)
	beqz $t0, end_while1
	addi $s1, $s1, 1
	j while1
end_while1:
	addi $s1, $s1, -1
	li $s2, 'S'
	sb $s2, palin
while2:
	bge $s0, $s1, end_while2
if:
	lbu $t2, 0($s0)
	lbu $t3, 0($s1)
	bne $t2, $t3, else
	addi $s0, $s0, 1
	addi $s1, $s1, -1
	j end_if
else:
	li $s2, 'N'
	sb $s2, palin
	j end_if
end_if:
end_while2:
	li $v0, 17
	li $a0, 0
	syscall
end_main:
	