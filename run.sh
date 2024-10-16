#!/bin/bash
gcc -m32 -o rop_attack.exe rop_attack.c
./rop_attack.exe > rop_attack.txt
./dumbledore_rop.exe < rop_attack.txt

