.data
	x: .space 4
	lon: .space 4
	xsll: .space 4
	xsrl: .space 4
	xsra: .space 4
	xrol: .space 4
	xror: .space 4
.text
main:
	lw $t0, x
	lw $t1, lon
	sllv $t2, $t0, $t1
	sw $t2, xsll
	srlv $t3, $t0, $t1
	sw $t3, xsrl
	srav $t4, $t0, $t1
	sw $t4, xsra
	rol $t5, $t0, $t1
	sw $t5, xrol
	ror $t6, $t0, $t1
	sw $t6, xror
	li $v0, 17
	li $a0, 0
	syscall
end_main: