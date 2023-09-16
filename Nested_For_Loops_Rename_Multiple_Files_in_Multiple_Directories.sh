#!/usr/bin/env bash
###############################################################################
#                                                                             #
#            Script to zero fill filenames in Kae's Code Examples!            #
#                                                                             #
###############################################################################
#                                                                             #
#           Ex: "Chapter 01/Pr1-1.cpp" -> "Chapter 01/Pr1-01.cpp"             #
#                                                                             #
# --------------------------------------------------------------------------- #
#                                                                             #
# Notes:                                                                      #
# * For loop with multiple sequences:                                         #
#   {1..5} {6..10} 15                                                         #
#   ex:                                                                       #
#       for i in {01..12} 20; do ...    // [01, 02, 03, 04, ..., 20]          #
#                                                                             #
# * To Strip Leading Zeros:                                                   #
#   i = 01                                                                    #
#   p = $((i+0))                        // p == '1'                           #
###############################################################################

SRC="/Users/katayama/Documents/School/Kae/CISC_114/code_examples/OneDrive_1_3-4-2023"

for i in {01..12} 20; do
    echo "Chapter $i";

    if [[ $i == 20 ]]; then
        p=$(expr $i - 1);
    else
        p=$(expr $i + 0);
    fi

    for j in {1..9}; do
        filenames rename "$SRC/Chapter $i" "Pr$p-$j.cpp" "Pr$p-0$j.cpp" #--preview;
    done;
done;

