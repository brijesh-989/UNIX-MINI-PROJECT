if test $1 -eq 1
then
          clear
          printf "\t\tTEXT PROCESSING COMMANDS\n\n"
          printf "\t1 -- Search a file for a pattern\n"
          printf "\t2 -- Count lines, words, and characters in specified files\n"
          printf "\t3 -- Display line differences between two files\n"
          printf "\t4 -- Quit -- Exit Program\n\n"
          printf "\t\tEnter your choice: "
          read cmd
else if test $# -eq 0
then 
	     clear
         printf "\t\tTEXT PROCESSING COMMANDS\n\n"
         printf "\t1 -- Search a file for a pattern\n"
         printf "\t2 -- Count lines, words, and characters in specified files\n"
         printf "\t3 -- Display line differences between two files\n"
         printf "\t4 -- Return to Main Menu\n\n"
         printf "\t\tEnter your choice: "
	     read cmd
fi
fi
if test $cmd -lt 4 -a $cmd -gt 0
then printf "\nEnter file name: "
read file
fi
case "$cmd" in
	"1") #Search a file for a pattern
		printf "Enter pattern: "
		read p
		grep $p $file
	;;
	"2") #Count lines, words, and characters in specified file
		echo "Lines: `cat $file | wc -l`"
		echo "Words: `cat $file | wc -w`"
		echo "Characters: `cat $file | wc -c`"
	;;
	"3") #Differences between two files
	
		printf "Enter another file name: "
		read 'file2'
		
		diff "$file" "$file2"
	;;
	"4") #Return to main menu
		if test $1 -eq 1 
		then
			sh main_menu.sh
		else
			exit 1
		fi
	;;
     "help")
         printf "\n help------------\n You have to enter one of the choice by entering 1 or 2 or 3 or 4\n "
    ;;
	*)
		printf "\nInvalid Choice!\n"
		exit 1
	;;
esac

