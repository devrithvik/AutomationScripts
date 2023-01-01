#!/bin/bash
read -p 'enter your desired username:' username
echo hiiii $username !!!
read -s -p  'enter your number:' ph_number
printf "\nyour passowrd is safe\n"
printf "what you prefer\n1.shopping\n2.sports\n3.learning"
read -p "choose a number out of 3:" choice
if [ $choice == 1 ]
then 
  printf "you are a very chill guy"
elif [ $choice == 2 ]
then
 printf "you are a sporty person"
elif [ $choice == 3 ]
then 
printf "you are a sound learner"
else
 printf "you may not belong here\n"
fi


# INFO:
# It collects the name,number,and your hobbies.
