.data
.balign 8
str:
	.ascii "hello world"
	.byte 0
/* end data */

.text
.globl main
main:
	sd fp, -16(sp)
	sd ra, -8(sp)
	add fp, sp, -16
	add sp, sp, -16
	la a0, str
	call puts
	li a0, 0
	add sp, fp, 16
	ld ra, 8(fp)
	ld fp, 0(fp)
	ret
/* end function main */

.section .note.GNU-stack,"",@progbits
