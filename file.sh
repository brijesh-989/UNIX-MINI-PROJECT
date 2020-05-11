if test $1 -eq 1
then 
	           clear
               printf "\t\tFILE AND DIRECTORY MANAGEMENT COMMANDS\n\n"
               printf "\t1 -- Display the contents of a file\n"
               printf "\t2 -- Remove a file\n"
               printf "\t3 -- Copy a file\n"
               printf "\t4 -- List a file\n"
               printf "\t5 -- Size of a file\n"
               printf "\t6 -- Quit -- Return to main Menu\n\n"
               printf  "\t\tEnter your choice: "
	           read cmd
else if test $# -eq 0
then 
	     clear
              printf "\t\tFILE AND DIRECTORY MANAGEMENT COMMANDS\n\n"
              printf "\t1 -- Display the contents of a file\n"
              printf "\t2 -- Remove a file\n"
              printf "\t3 -- Copy a file\n"
              printf "\t4 -- List a file\n"
              printf "\t5 -- Size of a file\n"
              printf "\t6 -- Exit Program\n\n"
              printf  "\t\tEnter your choice: "
	          read cmd
fi
fi

if test $cmd -gt 0 -a $cmd -lt 6
then printf "\nEnter file name: "
read file
fi
case "$cmd" in
	"1") #Display content of a file
		
		if test -f $file
		then	
			cat $file | less
		else
			echo "$file: does not exist"
			exit 1
		fi
	;;
	"2") #Remove a file
		if test -f $file
		then
			rm $file
		else
			if test -d $file
			then
				rm -r $file
			else
				echo "$file: does not exist"
				exit 1
			fi
		fi 
	;;
	"3") #Copy a file
		if test -f $file
		then
			printf "Enter new file name: "
			read newfile
			cp $file $newfile
		else 
			if test -d $file
			then
				printf "Enter new directory name: "
				read newfile
				cp -r $file $newfile
			else
				echo "$file: does not exist"
				exit 1
			fi
		fi
	;;
	"4") #List a file
		if test -f $file
		then	
			ls -l $file
		else
			echo "$file: does not exist"
			exit 1
		fi
	;;
	"5") #Size of a file
		if test -f $file
		then
			echo `ls -lh file.sh | cut -d ' ' -f 5`
		else
			if test -d $file
			then
				echo `du -hs $file| awk '{print $1}'` 
			else
				echo "$file: does not exist"
				exit 1
			fi
			
		fi
	;;
	"6") #Return to main menu
		if test $1 -eq 1
		then
			sh main_menu.sh
		else
			exit 1
		fi
	;;
     "help")
         printf "\n help------------\n You have to enter one of the choice by entering 1 or 2 or 3 or 4 or 5 or 6\n "
    ;;
	*)
		printf "\nInvalid Choice!\n"
		exit 1
	;;
esac
