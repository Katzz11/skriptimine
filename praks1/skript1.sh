#!/bin/bash

# our comment is here

echo "The current directory is:"

pwd

echo "The user logged in is:"


whoami

# display user home


echo #Home for the current user is: $HOME#

# User variables

grade=5

person="Adam"

echo "$person is a good boy, he is in grade $grade"


mydir=$(pwd)


echo $mydir


var1=$(( 5 + 5))

echo $var1

var2=$(( $var1 * 2 ))

echo $var2

if whoami; then

        echo "It works"

fi

user=likegeeks

if grep $user /etc/passwd; then

        echo "No such a user $user"

fi

user=anotherUser

if grep $user /etc/passwd; then

        echo "The user $user Exists"

else

        echo "The user $user doesn't exist"

fi

user=anotherUser

if grep $user /etc/passwd; then

        echo "This user $user Exists"

elif ls /home; then

        echo "The user doesn't exist"

fi

num=11

if [ $num -gt 10 ]; then

          echo "$num is bigger than 10"

else

          echo "$num is less than 10"

fi

user="likegeelks"

if [ $user = $USER ]; then

         echo "The user $user$ndsp; is the current logged in user"

fi


v1=Likegeeks

v2=likegeeks

if [ $v1 \ $v2 ]; then

        echo "$v1 is greater than $v2"

else
        echo "$v1 is less than $v2"

fi

mydir=/home/likegeeks

if [ -d $mydir ]; then

       echo "Directory $mydir exists"

       cd $mydir

       ls

else

       echo "no such file or directory $mydir"

fi

