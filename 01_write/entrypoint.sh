#!/usr/bin/env bash

gcc -Wall -no-pie -nostdlib 01_write.s && ./a.out
echo Exit was $?
