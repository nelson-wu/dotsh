#!/bin/bash
# CCC judge program
# Make sure your compiled program file is named
# something like j3_11 and is copied into
# the folder where the test inputs/outputs are.
# USAGE: cccjudge.sh [EXECUTABLE PROGRAM FiLE]
# EXAMPLE: $  ~/bin/cccjudge.sh ~/problems/j2_11
base=`dirname $1`
for ((a=1; a!=6; a++)) do
    echo $a
    python "$1" < $base/*."$a"*.in > $1.$a.test
    (cmp <(sed -e '$a\' $1.$a.test) <(sed -e '$a\' $base/*.$a*.out) && echo Right) || echo Wrong
done
