#!/bin/bash

# FLAG, 1 if you dont want program oututs
DELETE_OUTPUTS=1 

for i in `dir -d *.test`
do
    echo "Kappa runned on file : "$i
    ../Kappa $i 2> /dev/null 1>./$i.out.PROUT
done

#check

for i in `dir -d *.out`
do
    echo "Checking outputs for: "$i
    diff ./$i.PROUT ./$i
done

#delete prog outputs
if [ $DELETE_OUTPUTS == 1 ]
then
    for i in `dir -d *PROUT`
    do
        rm $i
    done
fi
