#/bin/bash
read -p "enter a number:" num
i=1
while [ $num != $i ]
do
 echo "$i"
 i=$((i+1)) 
done
