#!/bin/bash
for number in {0..10..2};do
    label=`printf %04d%s ${number%*}`.JPG
    #check out this numbers
    echo "${label}"
done
