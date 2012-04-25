#! /bin/bash

for f in ./test/* 
do
    echo "TESTING FILE $f"
    cat $f | ./TestKappaGrammar
    echo
    echo
done
