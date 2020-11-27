#!/bin/bash
#Author: Dokthoror
#Version: 1.0
#Required: random-owo.sh (on my Github)
#Use: ./owoifer <your text: required>
#Repo: https://github.com/Dokthoror/Random-owo

owo_result=$@

# Replaces na, ne, ni, no and nu by nya, nye, nyi, nyo and nyu
owo_result=$(echo $owo_result | sed 's/na/nya/g;s/ne/nye/g;s/ni/nyi/g;s/no/nyo/g;s/nu/nyu/g')
owo_result=$(echo $owo_result | sed 's/NA/NYA/g;s/NE/NYE/g;s/NI/NYI/g;s/NO/NYO/g;s/NU/NYU/g')
owo_result=$(echo $owo_result | sed 's/Na/Nya/g;s/Ne/Nye/g;s/Ni/Nyi/g;s/No/Nyo/g;s/Nu/Nyu/g')

# Replaces l and r by w
owo_result=$(echo $owo_result | sed 's/r/w/g;s/l/w/g')
owo_result=$(echo $owo_result | sed 's/R/W/g;s/L/W/g')

# Replaces ove by uv
owo_result=$(echo $owo_result | sed 's/ove/uv/g')

# Replaces ! by a random owo (need random-owo.sh in PATH env)
[[ $(which random-owo.sh) ]] && owo_result=$(echo $owo_result | sed "s/\!\+/$(random-owo.sh)/g")


echo $owo_result


exit 0