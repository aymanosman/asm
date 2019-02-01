#!/usr/bin/env bash

gcc -Wall -nostdlib 00_exit.s && ./a.out
echo Exit was $?
