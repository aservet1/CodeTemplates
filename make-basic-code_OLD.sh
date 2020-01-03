#!/bin/bash

#TODO -- change the over-write logic
#	 also make it so you can just type 'yourfile.extension' and have it
#	 parse out the .ext and know what kind of file to make it

language=$1

if [ -z $2 ]
then
	file_name="basic-code"
else
	file_name="$2"
fi

#keep variables in other file? kinda dumb for this but practice with globals...
c_extension=".c"
java_extension=".java"
python_extension=".py"
bash_extension=".sh"

c_file_contents="#include<stdio.h>\n#include<stdlib.h>\n#include<string.h>\n\nint main()\n{\n\n\treturn 0;\n}\n"
java_file_contents="class Basic\n{\n\tpublic static void main(String[] args)\n\t{\n\n\t}\n}\n"
bash_file_contents='#!/bin/bash\n'
python_file_contents="from random import randint\nfrom sys import argv\n\'\'\'-----------------------------------------------------------\'\'\'"

case $language in
	'java')
		file=$file_name$java_extension
		contents=$java_file_contents
		;;
	'python')
		file=$file_name$python_extension
		contents=$python_file_contents
		;;
	'c')
		file=$file_name$c_extension
		contents=$c_file_contents
		;;
	'C')
		file=$file_name$c_extension
		contents=$c_file_contents
		;;
	'bash')
		file=$file_name$bash_extension
		contents=$bash_file_contents
		touch $file
		chmod +x $file
		;;
	*)
		echo 'language not recognized'
		exit 0
	esac

if ! test -f  $file; then
	printf "$contents" > $file
else
	printf "already exits. over-write? enter y/n: "
	read response
	while "$response" != "y" && "$response" != "n";
	do
		printf "invalid response. enter y/n: "
		read response
	done
	case $response in [yY]*) printf "$contents" > $file;; esac
fi
