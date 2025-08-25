.data
# float x1, y1, x2, y2, xp, yp;
	x1:	.float 0
	y1:	.float 0
	x2:	.float 0
	y2:	.float 0
	xp:	.float 0
	yp:	.float 0
.text
# int main (void) {
main:
	l.s $f20, x1
	l.s $f21, x2
	l.s $f22, y1
	l.s $f23, y2
	l.s $f24, xp
#    yp = ((xp-x1) * (y2-y1)) / (x2-x1) + y1;   
	sub.s $f24, $f24, $f20
	sub.s $f23, $f23, $f22
	mul.s $f24, $f24, $f23
	sub.s $f21, $f21, $f20
	div.s $f24, $f24, $f21
	add.s $f24, $f24, $f22
	s.s $f24, yp
# return 0;
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main: