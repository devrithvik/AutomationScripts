#!/bin/bash
i=1
df -H |awk '{print $5}'|while read output
do
 res=$((echo $output |cut -d "%" -f1))
 if [( $res -gt 80 || $res != "Use" )]
 then
  echo "hurry up the mem-usg is $output"
 fi 
done

# INFO:
# It give the info and alert about the memory usage.


