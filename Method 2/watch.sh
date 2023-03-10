#!/bin/bash
## ## ##!/bin/zsh can also be used instead. Though it doesn't makes any difference. Just for user preferences.
## ## ##!/bin/sh can also be used instead. Though it doesn't makes any difference. Just for user preferences.
path="/home/nitkarshc/Desktop/codingPools" # Replace this with the path to your git repository. To get path, run pwd in the directory or right click and select properties of the folder
while true
do
	inotifywait --recursive -qq -e attrib,create,delete,modify,delete_self,move,move_self,close_write $path
	cd $path                              &> /dev/null
	git pull                              &> /dev/null
	git add --all                         &> /dev/null
	now=$(date)                           &> /dev/null
	git commit -m "Auto-Commit at : $now" &> /dev/null	
	git push -u origin main               &> /dev/null
done
