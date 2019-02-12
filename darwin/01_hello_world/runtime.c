#include <stdio.h>

#define fixnum_mask 0b11
#define fixnum_tag  0b00
#define fixnum_shift 2

typedef unsigned long long ptr;

extern ptr entry();

void print_ptr(ptr x) {
    if (((x & fixnum_mask) == fixnum_tag)) {
      printf("%lld", x >> fixnum_shift);
    } else {
      printf("#<unknown %p>", (void*)x);
    }
    printf("\n");
}

int main() {
    print_ptr(entry());
    return 0;
}
