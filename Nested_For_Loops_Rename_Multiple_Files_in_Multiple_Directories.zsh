#!/usr/bin/env zsh
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
    c=$((i+0))
    echo "Chapter $i"

    if [[ $i = 20 ]]; then
        p=$((i-1))
    else
        p=$((i+0))
    fi

    for j in {1..9}; do
        # filenames rename "$SRC/Chapter $i" "Pr$p-$j.cpp" "Pr$p-0$j.cpp" --preview; done; done;
        filenames rename "$SRC/Chapter $i" "Pr$p-$j.cpp" "Pr$p-0$j.cpp"; done; done;


###############################################################################
#     Revisit this problem to zero fill the chapter part of the file name!    #
###############################################################################
#                                                                             #
#          "Chapter 01/Pr1-01.cpp" -> "Chapter 01/Pr01-01.cpp"                #
#                                                                             #
###############################################################################

# -- Numerical for loop, only useful if you know all of the numbers...
for chapter in {01..12} 20; do
    echo "Chapter ${chapter}";

    if [[ $chapter = 20 ]]; then
        chapter=$((chapter-1));
    fi
done;

# -- Better way: find ### NOT FINISHED ###
for chapter in $(find . -type d | sort); do
    orig_path=${SRC}/${chapter}: echo "${orig_path}";
    new_path=${SRC}/${chapter}; echo "${new_path}";
done;
    for item in $(find "${}");

    echo "Chapter $chapter!";
    cmd=(filenames bourne rename "${SRC}/Chapter ${chapter}"/"drchapter")
    Loogs
done;
