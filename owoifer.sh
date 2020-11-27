#!/bin/bash
#Author: Dokthoror
#Version: 1.0
#Required: random-owo.sh (on my Github)
#Use: ./owoifer <your text: required>
#Repo: https://github.com/Dokthoror/Random-owo

owo_result=$@

# Replaces na, ne, ni, no and nu by nya, nye, nyi, nyo and nyu
owo_result=$(echo $owo_result | sed 's/na/nya/;s/ne/nye/;s/ni/nyi/;s/no/nyo/;s/nu/nyu/')
owo_result=$(echo $owo_result | sed 's/NA/NYA/;s/NE/NYE/;s/NI/NYI/;s/NO/NYO/;s/NU/NYU/')
owo_result=$(echo $owo_result | sed 's/Na/Nya/;s/Ne/Nye/;s/Ni/Nyi/;s/No/Nyo/;s/Nu/Nyu/')

# Replaces l and r by w
owo_result=$(echo $owo_result | sed 's/r/w/;s/l/w/')
owo_result=$(echo $owo_result | sed 's/R/W/;s/L/W/')

# Replaces ove by uv
owo_result=$(echo $owo_result | sed 's/ove/uv/')

# Replaces ! by a random owo (need random-owo.sh in PATH env)
[[ $(which random-owo.sh) ]] && owo_result=$(echo $owo_result | sed "s/\!\+/$(random-owo.sh)/")


echo $owo_result


exit 0