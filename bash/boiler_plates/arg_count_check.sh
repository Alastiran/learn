#!/bin/bash
E_WRONG_ARGS=85
script_paramters="-a -h"
#			 -a = all, -h = help

if [ $# -ne #<num_expec_args> ]
then
	echo "Usage: `basename $0` $script_paramters"
	exit $E_WRONG_ARGS
fi
