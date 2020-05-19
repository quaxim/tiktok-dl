#!/bin/bash
cd "/home/adam/tiktok-dl"
find ./downloaded/* -maxdepth 1 -type d | cut -f3 -d"/" > file.txt
while read line; do python3 tiktok-dl.py $line; done < file.txt

