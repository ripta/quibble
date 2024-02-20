.data
.balign 8
_str:
	.ascii "hello world"
	.byte 0
/* end data */

.text
.globl _main
_main:
	pushq %rbp
	movq %rsp, %rbp
	leaq _str(%rip), %rdi
	callq _puts
	movl $0, %eax
	leave
	ret
/* end function main */

