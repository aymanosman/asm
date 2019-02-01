.globl _start
_start:
    movq $99, %rdi
    movq $60, %rax # _exit syscall
    syscall

