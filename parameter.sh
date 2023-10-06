#!/bin/bash
echo '=====$n====='
echo script name: $(basename $0 .sh)
echo script path: $(dirname $0)
echo absolute path: $(cd $(dirname $0); pwd)
echo 1st parameter: $1
echo 2st parameter: $2
echo '=====$#====='
echo parameter numbers: $#
echo '=====$*====='
echo $*
echo '=====$@====='
echo $@
