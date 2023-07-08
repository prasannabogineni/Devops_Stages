#!/bin/bash

myfun()
{
read -p "Enter your name:" name
if [ "$name" == "pavan" ]
then
	echo "Hello $name"
else
	echo "ohh....!!! so sorry"
fi
}
myfun
