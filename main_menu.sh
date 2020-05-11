#!/bin/bash

if test $# -eq 0
then 
	      clear
          printf "\t\tUNIX HELP MAIN MENU\n\n"
          printf "\t1 -- File and Directory Management Commands\n"
          printf "\t2 -- Text Processing Commands\n"
          printf "\t3 -- System Status Commands\n"
          printf "\t4 -- Exit\n\n"
          printf "\t\tEnter your choice: "
	read cmd

	case "$cmd" in
		"help")
			echo "usage: $0"
		;;
		"1") #file
			clear
			sh file.sh
		;;
		"2") 
			clear
			sh text.sh
		;;
		"3")
			clear
			sh system.sh
		;;
		"4")
			clear
			exit
		;;
		*)
			printf "\nInvalid Choice!\n"
			exit 1
		;;
	esac

else if test $# -eq 1
then
	if  [[ $1 == "help" ]];
	then
		clear
		sh help.sh
		exit 1

	else if [[ $1 == "file" ]];
	then 
		clear
		sh file.sh 1
	else if [[ $1 == "text" ]];
	then
		clear
		sh text.sh 1
	else if [[ $1 == "status" ]];
	then 
		clear
		sh system.sh 1
	else
		printf "\nInvalid Argument!\n"
	fi
	fi
	fi
	fi
fi
fi
