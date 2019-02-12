foo:
  mov $42<<2, %eax
  retq
.globl _entry
_entry:
  callq foo
  retq
