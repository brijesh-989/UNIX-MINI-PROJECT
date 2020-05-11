
if test $# -eq 0
then
	   clear
       printf "\t\tSYSTEM STATUS COMMANDS\n\n"
       printf "\t1 -- Display the current date and time\n"
       printf "\t2 -- Current disk usage\n"
       printf "\t3 -- List current environment variables\n"
       printf "\t4 -- Display process status information\n"
       printf "\t5 -- Exit Program\n\n"
       zprintf "\t\tEnter your choice: "
	read cmd
else if test $1 -eq 1
then 
	   clear
       printf "\t\tSYSTEM STATUS COMMANDS\n\n"
       printf "\t1 -- Display the current date and time\n"
       printf "\t2 -- Current disk usage\n"
       printf "\t3 -- List current environment variables\n"
       printf "\t4 -- Display process status information\n"
       printf "\t5 -- Quit -- Return to Main Menu\n\n"
       printf "\t\tEnter your choice: "
	read cmd
fi
fi
case "$cmd" in
	"1") #Display current date and time
		date "+%D %R"
	;;
	"2") #Current Disk usage
		df -h | less
	;;
	"3") #List current local and environment 
		printenv | less
	;;
	"4") #Display Process status information
		ps -e | less
	;;
	"5") #Return to main menu
		if test $1 -eq 1
		then
			sh main_menu.sh
		else
			exit 1
		fi
	;;
     "help")
         printf "\n help------------\n You have to enter one of the choice by entering 1 or 2 or 3 or 4 or 5\n "
    ;;
	*)
		printf "\nInvalid Choice!\n"
		exit 1
	;;
esac


