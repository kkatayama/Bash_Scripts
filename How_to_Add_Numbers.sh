#!/usr/bin/env bash

# Test that "3 + 4 + 3 == 10"
echo ""
echo "EQ = \"3 + 4 + 3\" = ?"

EQ="3 + 4 + 3"
echo "EQ = \"${EQ}\" = $(expr $EQ)"
echo ""
### OUTPUTS ###
# EQ = "3 + 4 + 3" = ?
# EQ = "3 + 4 + 3" = 10


# Test that "2 + 4 == 6" but this time using variables
NUM="2"
SUM=$(expr $NUM + 4)

echo "NUM = 2"
echo "NUM + 4 = ?"
echo "NUM + 4 = ${SUM}"
echo ""

### OUTPUTS ###
# NUM = 2
# NUM + 4 = ?
# NUM + 4 = 6
