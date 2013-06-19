#!/bin/sh
hostname
WATER=$(hostname)
HOUR=$(date +%H)
# echo "hostname is: $WATER"

if [ $HOUR -eq 15 ]; then
    echo $HOUR
elif [ $WATER == 'hostname' ]; then
    echo "the host is $WATER"
else
    echo "the host is NOT $WATER"
fi

echo "how many positional parameters?"
echo $#

echo "what is filename?"
echo $0

TESTING=$(getopt -n $0 -o:A)
echo "testing is?"
echo $TESTING
