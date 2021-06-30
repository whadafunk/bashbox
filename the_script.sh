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






























