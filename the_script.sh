#!/bin/bash

# Let's start with the classic Hello World
# The -e parameter I used, it tells echo to interpret special characters like \n

echo -e "Hello World\nOn two separated lines"

# Variables in bash are declared with an attribution instruction like x="var content"
# If you want to retrieve the content of a variable, then you need to use a dollar 
# $ sign in front of the variable. Ex: $var

var="The quick brown fox"
echo $var

# Variables are usually strings or integers, and by default they are treated as strings
# You can use multiple string variables at once to concatenate a string

var2=" Jumps over the lazy dog"
echo -e $var1$var2

# Another thing about variables, is that they are expanded also when used inside quotes

echo "displaying the $var stuff"

# If we are using single quotes though, the variables are not expanded anymore

echo -e 'displaying the $var stuff'

# We can also display environment variables

echo -e "The content of the HOME environemt variable is: $HOME"

#### POSITIONAL PARAMETERS ####

# The positional parameters are also variables, but their content is automatically initialized 
# when you run the script

# Here are some of the most common environment variables:

# $0 - the name of the script
# $1, $2, $3, ..., $100 - the first, second, hundred parameter gave by the user on the command line
# $* a string with all the parameters typed on the command line
# $@ an array with all the parameters typed on the command line
# $? the exit status code of the last command
# $$ The pid of the script itself
# $# the number of parameters typed on the command line

# Please run the script with a couple of parameters to see this in play

echo "Our script filename is $0, and it has $# parameters, and its running PID is $$"

# To display the parameters from the command line we use a for construct

for i in $@; do
	echo $i
done

# Of course we can also display the parameters as a concatenated string

echo -e "The concatenated string of cli parameters is:\n$*"

# If we check the exit status code now, we will get the status code for the last command, meaning the last echo

echo "The last status command was $?"

# Let's see what happens if generate an error

cp file.inexistent inexistent.file
echo -e "Last command should have exited with error: $?"






























