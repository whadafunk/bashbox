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

# While being here, let's also introduce the exit command, which allows as to 
# exit the current running script with a specific code
# Example: exit 0; wich will exit script with a success code.

# Also worth mentioning, that the truth values with bash are oposite to most programming languages
# meaning 0 is true, and 1 is false

#### CONDITIONAL CONSTRUCTS ####


# Like any programming language, bash supports conditional constructs
# IF, ELSE,  WHILE, CASE, UNTIL
# But as you will see we will use mostly IF and WHILE, so let's start with IF

if [ $# -eq 0 ]; then
	echo -e "You haven't typed any parameters on the command line"
else
	echo -e "You have typed the following $# parameters: $*"
fi

# Another form in which we can write the previous snippet would be using the test command

if test $# -eq 0; then
	echo "You haven't typed any parameters on the command line2"
fi

# The idea here is that [ and test are two very similar commands from the coreutils package
# You will find them both under /usr/bin. One particularity about the [ command
# is that it has to be finished with a closed square bracket ]

# So when it comes to evaluating expressions we can use any of those

# test expression;
# [ expression ];

# In case of [ expressions ], the spaces right next to the square brackets are important

# You might have seen many of the conditional constructs (while, or if), with a semicolumn after the expression
# Like in the following example:

# if [ 1 -eq 1 ]; then
# while [ $var -eq 1 ]; do

# In the previous example the semicolumn was necessary because we have two commands on the same line
# and in bash we use semicolumn to separate commands. 
# We can write  the previous lines without using the semicolumn

if [ 1 -eq 1 ]
then
	echo "The expression here is allways 0; that's why you are seeing this"
fi

### NUMERICAL COMPARISON OPERATORS ###

# $var1 -eq $var2 -> equality test
# $var1 -ne $var2 -> inequality test
# $var1 -lt $var2 -> less than test
# $var1 -le $var2 -> less than or equal test
# $var1 -gt $var2 -> greater than test
# $var1 -ge $var2 -> greater than or equal test

### STRING COMPARISON OPERATORS ###

# -z string -> returns true if string is empty; i.e., ""
# test [-n] string -> returns true if string is not empty
# string1 = string2
# string1 != string2
# string1 < string2 -> Returns true if string1 sorts before string2 lexicographically
# string1 > string2 -> Returns true if string1 sorts after string2 lexicographically

### MISC COMPARISON OPERATORS ###

# -v var -> returns true if the shell variable is set
# expr1 -a expr2 -> returns true of both expr1 and expr2 are not null
# expr1 -o expr2 -> returns true if any of the expressions is not null


### FILE COMPARISON OPERATORS ###

# -a file -> returns true if file exists. Does the same thing as -e
# -b file -> returns true if file is a block device
# -c file -> returns true if file is a character device
# -d file -> returns true if file is a directory
# -h file -> returns true if file is a symbolic link. Does the same as -L
# -r file -> returns true if the file is readable by the user running test
# -x file -> returns true if the file is executable by the user running test
# -w file -> returns true if the file is writable by the user running test
# -s file -> returns trus if the file exists and is not empty
# -O file -> returns trus if the file is owned by the user running the script
# file1 -nt file2 -> returns true if file1 is newer than file2
# file1 -ot file2 -> returns true if file1 is older than file2





















