#!/bin/bash
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
    break #what happens when you comment out this line? why?
  fi

done

echo "Number = $counter"

exit 0
