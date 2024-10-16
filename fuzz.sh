#!/bin/bash

# File containing the C program
C_FILE="rop_attack.c"
TEMP_FILE="rop_attack_temp.c"

# Infinite loop to append 'a' and run the commands
while true; do
    # Add an 'a' to the beginning of the p array
    sed 's/\(unsigned char p\[] = {\)/\1\n'\''a'\'', /' "$C_FILE" > "$TEMP_FILE"

    # Move the temporary file back to the original file
    mv "$TEMP_FILE" "$C_FILE"

    # Compile the C program
    gcc -m32 -o rop_attack.exe "$C_FILE"

    # Run the executable and output to rop_attack.txt
    ./rop_attack.exe > rop_attack.txt

    # Run the result through dumbledore_rop.exe
    ./dumbledore_rop.exe < rop_attack.txt

    # Optional: Pause for a second to avoid too rapid execution
   
done

