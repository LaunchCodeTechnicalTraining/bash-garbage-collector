#!/bin/bash

dir=/home/student/bash-garbage-collector/trash
log=/home/student/bash-garbage-collector/garbage.log

while true
do
    if [[ $(ls $dir) == "" ]]
    then
        echo "$(date): no contents detected in $dir" >> $log
    else
        echo "$(date): contents detected in $dir...emptying" >> $log
        rm $dir/*
    fi
    sleep 30
done
