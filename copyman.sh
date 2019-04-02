#!/bin/bash
echo "Welcome to Copyman. A simple helper utility to copy files."
echo "It can resume failed or terminated copies"
echo "This uses cURL behind the hood"
echo "DO NOT PUT PATH IN Quotation"
echo "<Author: unsuitable001>"
echo
read -p "File Location : " Loc
echo
read -p "Directory? [Y/N] : " -n 1 -r isDir
echo
read -p "File Destination : " Dest
echo
if cd "$Dest"
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
