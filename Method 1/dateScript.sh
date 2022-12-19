#!/bin/sh


# Script made by me, Nitkarsh Chourasia.

cd /home/nitkarshc/Desktop/Programmed?/extras
git add --all
git commit -S -m "autoupdate `date +%F-%T`"
git push
echo `date` >> /home/nitkarshc/Desktop/Programmed?/extras/date.txt
