#!/bin/bash
echo "Welcome to Copyman. A simple helper utility to copy files."
echo "It can resume failed or terminated copies"
echo "This uses cURL behind the hood"
echo "<Author: unsuitable001>"
echo "File Location : "
read Loc
echo "File Destination : "
read Dest
cd $Dest
curl -C -  -O "file://$Loc"
