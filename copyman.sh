#!/bin/bash
docstr="	-s | --source  >> File Source \n
	-d | --destination >> File destination \n
	-dir | --directory >> Put this flag if the source is actually an directory \n
	-h | --help >> help string\n"
Loc="$PWD"
isDir="y"
function interactor () {
	read -p "File Location [w/o qoute] : " Loc
	echo
	read -p "Directory? [Y/N] : " -n 1 -r isDir
	echo
	read -p "File Destination [w/o qoute] : " Dest
	echo
}

echo "Welcome to Copyman. A simple helper utility to copy files."
echo "It can resume failed or terminated copies"
echo "This uses cURL behind the hood"
echo
printf "\033[1;91mDO NOT PUT PATH IN Quotation while in interactive mode\033[0m even while using space. no worry. it will work fine \n"
echo "<Author: unsuitable001>"
echo
if [[ "$1" == "" ]]
then
	interactor
else
	while [ "$1" != "" ]; do
		case "$1" in
			-s | --source ) 	shift
						Loc=$1
						isDir="n"
						;;
			-i | --interactive )	interactor
						break
						;;
			-d | --destination )	shift
						Dest=$1
						;;
			-dir | --directory )	isDir="y"
						;;
			-r | --recursive )	isRec="y"
						;;
			-h | --help )		printf "$docstr"
						exit
						;;
		esac
		shift
	done
fi

if cd $Dest
then
	if [[ $isDir =~ ^[Yy]$ ]]
	then
		for f in $(ls -d -1 $Loc/*); do
		curl -C -  -O "file://$f"
		done
	else
		curl -C -  -O "file://$Loc"
	fi
fi
