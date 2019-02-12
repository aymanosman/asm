.globl _start
_start:
  mov $0x2000001, %rax
  mov $42, %rdi
  syscall
