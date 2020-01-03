#!/bin/bash
input=$1

echo 'input is: '$input
valid_extensions="py|java|c|sh"
regex="^[^.]*\.($valid_extensions)$"
types="python java c bash"
types_regex="^"${types//' '/'$|^'}"$"

#if [[ $input =~ ${types//' '/'|'} ]]
if [[ $input =~ ($regex) ]]
then
	echo 'yes'
else
	echo 'no'
fi

#name=$(echo $input | sed "s/\..*$//")
extension=$(echo $input | sed "s/^[^.]*\.//")
