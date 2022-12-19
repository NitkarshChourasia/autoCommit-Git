#!/bin/sh

# Script made by me, Nitkarsh Chourasia.


cd /home/nitkarshc/Desktop/Programmed?/clonedProjects/autoCommit-Git
git add --all
git commit -S -m "Auto-Commits @ `date +%F-%T`"
git push
echo `date` >> /home/nitkarshc/Desktop/Programmed?/clonedProjects/autoCommit-Git/'Method 1'/dateAutoCommits.txt

