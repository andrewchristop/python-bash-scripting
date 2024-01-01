#!/bin/bash
#Christopher Budiharto
#Purpose: This script enables DOS users to execute DOS commands to conduct basic UNIX operations
#Last Revision Date: 11/01/2023

#first name and last name variables
LASTNAME=Budiharto
FIRSTNAME=Christopher

#read arguments
ARG1=$1 #positional parameter no. 1
ARG2=$2 #positional parameter no. 2
ARG3=$3 #positional parameter no. 3

#Function declaration prevents reuse of code. Use of %> serves to suppress standard error and standard output
auth(){ #auth() function declaration; Function to be called when author's name is to be printed out

   echo $LASTNAME","$FIRSTNAME #echoes or outputs the name following the lastname,firstname format
}

typ(){ #typ() function declaration; Function to be called when a file is to be read

   cat $ARG2 #File to be read is the script's second positional parameter
}

cpy(){ #cpy() function declaration; Function to be called when a file is to be copied 

   cp $ARG2 $ARG3 &> /dev/null #Copies the file from one destination to the other
}

#Use of functions becomes useful here as renaming and moving files/directories rely on the same command
mvren(){ #mvren() function declaration; Function to be called when a file is to be moved or renamed

   mv $ARG2 $ARG3 &> /dev/null #Moves or renames a file
}

del(){ #del() function declaration; Function is to be called when a file is to be deleted

   rm -f $ARG2 &> /dev/null #Use of -f flag guarantees that user won't be prompted to confirm delete action. 
}

helppg(){ #helppg() function declaration; Function is to be called when user needs help running this script
   echo "--HELP PAGE--"
   echo "'./dosutil author' to display the author's name "
   echo "'./dosutil type /path/to/file' to read the contents of a file "
   echo "'./dosutil copy /path/to/file /destination/path' to copy a file"
   echo "'./dosutil move /path/to/file /destination/path' to move a file"
   echo "'./dosutil ren /path/to/oldfilename /path/to/newfilename' to rename a file"
   echo "'./dosutil del /path/to/file' to delete a file"
}

errmsg(){ #errormsg() function declaration; Function is to be called when user enters unrecognized parameter(s)
   echo "USAGE: ./dosutil [parameter]" #Instructional on how to use the script in case of an unrecognized parameter
   echo "'./dosutil help' for more options"
}

#Case-block conditional contingent upon running the program with one or multiple positional parameters
case "$ARG1" in
       author) #Positional parameter to be executed
         auth #auth() function call
         ;;
       
       type) #Positional parameter to be executed
         typ #typ() function call
         ;;

       copy) #Positional parameter to be executed
         cpy #cpy() function call
         ;;

       move) #Positional parameter to be executed
         mvren #mvren() function call
         ;;

       ren) #Positional parameter to be executed
         mvren #mvren() function call
         ;;

       del) #Positional parameter to be executed
         del #del() function call
         ;;
       
       help) #Positional parameter to be executed
         helppg #helppg() function call
         ;;
       *) #This block executes if parameters are left blank or unrecognized
         errmsg #errmsg() function call
         ;;
esac

#successful escape code
exit 0
