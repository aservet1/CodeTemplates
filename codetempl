#!/bin/bash

if [ -z $1 ]; then echo 'no file name or language entered'; exit; fi

valid_languages='python c java bash'
file_extensions='py c java sh'
valid_language_regex="^"${valid_languages//" "/"$|^"}"$"
valid_filename_regex="^[^.]*\.${file_extensions//' '/'|'}$"

template_files='/lib/code_templates'
python_file=$template_files/code-template.py
c_file=$template_files/code-template.c
java_file=$template_files/code-template.java
bash_file=$template_files/code-template.sh

if [[ $1 =~ $valid_language_regex ]]
then
	echo "going off language"
	filename='code'
	language=$1
	case $language in
	"python")
		ext='.py'
		contents=$python_file
		;;
	'c')
		ext='.c'
		contents=$c_file
		;;
	'java')
		ext='.java'
		contents=$java_file
		;;
	'bash')
		ext='.sh'
		contents=$bash_file
		;;
	*)
		echo 'invalid language: '$language
		exit 1
		;;
	esac

	filename=$filename$ext

elif [[ $1 =~ $valid_filename_regex ]]
then
	echo "going of filename"
	filename=$1
	ext=$(echo $filename | sed 's/^[^.]*\.//')
	case $ext in
	'py')
		contents=$python_file
		;;
	'c')
		contents=$c_file
		;;
	'java')
		contents=$java_file
		;;
	'sh')
		contents=$bash_file
		;;
	*)
		echo 'invalid filename: '$filename
		exit 1
		;;
	esac
else
	echo "invalid input: "$1
	exit 1
fi

if [ ! -f $filename  ]
then echo "none exist. will make"; cp $contents $filename
else echo "file '$filename' already exists. try again with new name"
fi
