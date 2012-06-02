#!/bin/bash

# FLAG, 1 if you dont want program oututs
DELETE_OUTPUTS=1 
# FLAG IF want Kappa to show debug informations
DEBUG_OUT=0

for i in `dir -d *.test`
do
    echo -en "\033[38m\033[32mKappa runned on file : \033[0m"$i"\n"
    if [ $DEBUG_OUT == 0 ]
    then
        ../Kappa $i 2> /dev/null 1>./$i.out.PROUT
    else
        ../Kappa $i 1>./$i.out.PROUT
    fi
done

#check

for i in `dir -d *.out`
do
    echo -en "\033[38m\033[31mChecking outputs for: \033[0m"$i"\n"
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
