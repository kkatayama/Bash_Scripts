#!/usr/bin/env zsh


for color in {black,red,green,yellow,blue,magenta,cyan,white}; do
    print -P "| %F{$color}${(l:10:)color}%f ${(l:5:)} | ${(l:5:)}bold-%B%F{$color}${color}%f%b"
done;
