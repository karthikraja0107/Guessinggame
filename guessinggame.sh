#!/usr/bin/env bash

while true;
do
FILES=`find . -type f -print | wc -l`
echo "Guess the number of files present under the current work directory"
read guess
if [ $FILES -lt $guess ]
then 
   echo "Your guess is greater than the count of files"
continue;

elif [ $FILES -gt $guess ]
then 
   echo "Your guess is lesser than the count of files"
continue;

else 
    echo "Congrats. You are correct"
break;
fi
done
