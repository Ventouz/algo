#!/bin/bash

# clear the screen
tput clear

# Move cursor to screen location X,Y (top left is 0,0)
tput cup 3 15

# Set a foreground colour using ANSI escape
tput setaf 3
echo "SCRIPT: Algo"
tput sgr0

tput cup 5 17
# Set reverse video mode
tput rev
echo "M E N U   P R I N C I P A L"
tput sgr0

tput cup 7 15
echo "1. Conversion HEX vers BIN"

tput cup 8 15
echo "2. Conversion DEC vers BIN"

tput cup 9 15
echo "3. Tri BULLE"

# Set bold mode
tput bold
tput cup 12 15
read -p "Enter your choice [1-4] " choice

tput clear
tput sgr0
tput rc
