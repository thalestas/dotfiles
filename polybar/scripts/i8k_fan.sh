#!/bin/bash
fan=$1

speed=$(i8kctl speed)

if [[ $fan == "r" ]]; then
	echo ${speed:0:4}
elif [[ $fan == "l" ]]; then
	echo ${speed:5:9}
fi
