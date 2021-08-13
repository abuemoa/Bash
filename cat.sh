# We need to create a loop that prints 10 times each word
pets=pets.log
for i in {1..10}
do
        echo "cat"
        echo "dog"
# At the end of the loop we add > to output the content of the loop to a file.
done > $pets
# The command grep will search and print the word cat and the option -c will print the amount of times the word repeats
grep -c cat $pets


# There are other ways to do this.
