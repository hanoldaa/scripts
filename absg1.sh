#!/bin/bash
#www.tldp.org/LDP/abs/html/scriptanalysis.html
# Examine the following script. Run it, then explain
# what it does. Annotate the scipt and rewrite it in
# a more compact and elegant manner.

#This script prints out the first number with the following conditions:
# The remainder of the number divided by 5 is 3. 
# The remainder of the number divided by 7 is 4.
# The remainder of the number divided by 9 is 5.

MAX=10000

for((counter=1; counter<$MAX; counter++))
do

  remainder5=$((counter % 5))
  remainder7=$((counter % 7))
  remainder9=$((counter % 9))
  if [[ $remainder5 = 3 && $remainder7 = 4 && $remainder9 = 5 ]]
  then
    break #Q: what happens when you comment out this line? why?
  	  #A: The code will not exit the loop and print every number
          #that satisfies the conditions.
  fi

done

echo "Number = $counter"

exit 0

#========================
#=====ORIGINAL CODE======
#========================
##!/bin/bash
#
#MAX=10000
#
#
#  for((nr=1; n<$MAX; nr++))
#  do
#
#    let "t1 = nr % 5"
#    if [ "$t1" -ne 3 ]
#    then
#      continue
#    fi
#
#    let "t2 = nr % 7"
#    if [ "$t2" -ne 4 ]
#    then
#      continue
#    fi
#
#    let "t3 = nr % 9"
#    if [ "$t3" -ne 5 ]
#    then
#      continue
#    fi
#
#  break  # What happens when you comment out htis line? Why?
#
#  done
#
#  echo "Number = $nr"
#
#exit 0
