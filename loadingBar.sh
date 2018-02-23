#!/bin/bash
#echo -ne '#####                     (33%)\r'
#sleep 1
#echo -ne '#############             (66%)\r'
#sleep 1
#echo -ne '#######################   (100%)\r'
#echo -ne '\n'
count=$((0))
anim=$((0))
while [[ $count -lt $((100)) ]]; do
    count=$((count+1))
    anim=$((anim+1))
    flag=$((count%2))
    if [[ $flag -eq $((0)) ]]; then
        bar="${bar}█"
    fi

    if [[ $anim -eq $((1)) ]]; then
        step="-"
    elif [[ $anim -eq $((3)) ]]; then
        step="\\"
    elif [[ $anim -eq $((9)) ]]; then
        step="|"
    elif [[ $anim -eq $((12)) ]]; then
        step="/"
    elif [[ $anim -eq $((15)) ]]; then
        step="-"
    elif [[ $anim -eq $((18)) ]]; then
        step="|"
    elif [[ $anim -eq $((21)) ]]; then
        step="/"
        anim=$((0))
    fi

    echo -ne "${step}${count}%[${bar}]\r"
    sleep 0.02
done
echo -ne "${count}%[${bar}]☺\n"
sleep 2
