#!/usr/bin/env bash

gcc -Wall -nostdlib -lSystem -e _start main.s -o a.out && ./a.out
echo Exit Code: $?
