#!/usr/bin/env bash

# Test that "3 + 4 + 3 == 10"
echo "3 + 4 + 3 = ?"
echo 3+4 | bc | xargs -I {} sh -c 'echo {}+3' | bc
echo ""

### OUTPUTS ###
# 3 + 4 + 3 = ?
# 10

# Test that "2 + 4 == 6" but this time using variables
NUM="2"
SUM=$((NUM+4))

echo "NUM = 2"
echo "NUM + 4 = ?"
echo "${SUM}"

### OUTPUTS ###
# NUM = 2
# NUM + 4 = ?
# 6
