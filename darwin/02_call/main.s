foo:
  mov $0x2000001, %rax
  mov $42, %rdi
  syscall
  ret
.globl _start
_start:
  call foo
  retq
