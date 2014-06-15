#!/bin/bash

echo "things begining with '#' are a comment"

# Command Separator
echo "The semicolon ';' is a command separator"
echo "allows 'if [ -x <text> ]; then' construct"

# Terminator
# ;; , used in case options
variable='justin'
case "$variable" in
	james) echo "\$variable = james" ;;
	justin) echo "\$variable = justin" ;;
esac

# dot
# current (.), parent directory (..)
# . <-- the source command (bash built in)

# " partial quote
# ' full quote

# comma opertaor for linking arithmathetic operations
let "t2 = (( a = 9, 15 / 3))"
echo "\$t2=$t2"
echo "\$a=$a"

# ':' null command, or NOP
# Has a myriad of uses I'm not adjusted to yet
# one example is creating files
# : > new_file.txt
: > test_nop.txt

# $ is the sigil for basic variable substitution
# ${} is parameter substitution (almost the same as variable sub
#    but more explicit form useful in many cases

#quoted string expansion
echo $'\t \042 \t'
echo $'\t \x5f\x3C \t'

# posiitonal paramters from the argument list
# $* all at once
echo "all at once "; echo $*

# with spaces
echo "with spaces ";echo $@

mkdir test_me

echo "this is process number $$"

a='first';
(a='second'; echo $a)
echo $a

base64_charset=( {A..Z} {a..z} {0..9} + / = )
echo $base64_charset

File=/etc/fstab.hd
{
	read line1
	read line2
} < $File

echo "Second line of $File is:"
echo "$line2"

exit 0;
