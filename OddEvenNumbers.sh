#!/bin/bash

# First, the program will prompt a text to ask the user to type a number
echo "Type a integer"
# The command read writes the text that the user writes into a variable. In this case the input will go to number
read number
# An integer is even when it can be divided by 2 and there is no remainders left.
# In this case the % is used because it gets the remainders of a division.
even=$number%2
# The following sentence is a set of logical conditionals that states that if the remainder is a 0
# then the number is an even number. If it is not, then it is not an even number.
# If the first conditional set in double square brackets is executed succesfully, then the echo command will write
# the command stated on the right of the && (and) operator. In case that the statement does not apply and writes an error, then
# the system will execute the command after the || (or)
[[ $even -eq 0 ]] && echo "$number is an even number" || echo "$number is not an even number"

# Kind reminder, the logical statement could be also be stated as follows:
# if [[ $even -eq 0 ]]; then
#       echo "$number is an even number"
# else
#       echo "$number is not an even number"
# fi

echo -e "\n======NOTE=====\nEdit the text to see the comments of the author"
