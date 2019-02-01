    .data
msg:
    .ascii "Hello World\n"
    .text
    .globl _start
_start:
    # write(1,"Hello World\n", 12);
    # write(rdi=1, rsi=*msg, rdx=12)
    movq $1, %rax # write syscall
    movq $1, %rdi # write to stdout
    # NOTE for the below to work, I had to compile with the gcc flag -no-pie
    # See https://stackoverflow.com/questions/43367427/32-bit-absolute-addresses-no-longer-allowed-in-x86-64-linux
    # movq $msg, %rsi # pointer to string above

    # For PIC, this works
    lea msg(%rip), %rsi

    movq $12, %rdx # write 12 bytes
    syscall

    movq $60, %rax # _exit syscall
    movq $0, %rdi # exit code
    syscall
