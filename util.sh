#!/bin/bash

function file_extension() {
	echo $1 | sed 's/^[^\.]*\.//g'
}

function source_file() {
	echo "$CODETEMPL_ROOT/code_templates/code-template.$1"
}

function item_in_list() {
	local key=$1; shift
	local list=$@
	for item in $list; do
		if [ "$item" == "$key" ]; then
			return 0
		fi
	done
	return 1
}

function usage_abort() {
	cat $CODETEMPL_ROOT/usage.txt
	exit 2
}

function help_message() {
	cat $CODETEMPL_ROOT/usage.txt; echo ""
	print_languages_formatted $CODETEMPL_ROOT/languages.config
	exit 1
}

function strip_file_contents() {
	local filename=$1
	local delete_comments='s/#.*$//'
	local delete_blank_lines='/^\s*$/d'
	local delete_trailing_whitespace='s/\s\s*$//'
	sed -e $delete_comments \
		-e $delete_blank_lines \
		-e $delete_trailing_whitespace \
	$filename
}

function print_languages_formatted() {
	local file=$1
	echo " Language Name: Recognized File Extension"
	strip_file_contents $file | sed 's/\s\s*/:\t/' | sed 's/^/  | /'
}
