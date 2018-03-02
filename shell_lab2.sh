#!/bin/bash
for number in {0..10};do
    label=`printf %04d%s ${number%*}`.JPG
    echo "${label}"
done