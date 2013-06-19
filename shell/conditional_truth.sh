#!/bin/sh

if [ -e hostname_testing.sh ]; then
    echo "true on zero!"
else
    echo "false on zero!"
fi

echo $(-e hostname_testing.sh)
