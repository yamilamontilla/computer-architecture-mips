.data
# float z, raiz_z, epsilon, error;
# register float xi, xi_1;
	z:		.float 0
	raiz_z:		.float 0
	epsilon:	.float 0.0001
	error:		.float 0	
	uno:		.float 1.0
	cero:		.float 0.0
.text
# int main (void) {
main:
#     if (z < 0.0)
if:
	l.s $f20, z
	l.s $f24, cero
	c.lt.s $f20, $f24
#         return 0;
	bc1t return_0
end_if:
#     xi_1 = 1; // Semilla si z > 0
	l.s $f0, uno
#     do {
do:
#         xi = xi_1;
	mov.s $f1, $f0
#         xi_1 = 0.5*(xi+z/xi);
	div.s $f2, $f20, $f1
	add.s $f2, $f1, $f2
	li $t0, 0x3f000000
	mtc1 $t0, $f3
	mul.s $f0, $f3, $f2
#     } while (fabs(xi_1-xi) >= epsilon);
while:
	sub.s $f4, $f0, $f1
	abs.s $f4, $f4
	l.s $f5, epsilon
	c.lt.s $f4, $f5
	bc1f do
end_do:
#     raiz_z = xi_1;
	s.s $f0, raiz_z
#     error = fabs(raíz_z-sqrt(Z));
	sqrt.s $f6, $f20
	sub.s $f7, $f0, $f6
	abs.s $f7, $f7
	s.s $f7, error
#     return 0;
return_0:
	li $v0, 17
	li $a0, 0
	syscall
# }
end_main:
