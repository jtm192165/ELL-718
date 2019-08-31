#!/bin/bash
echo "    "
echo "...............executing first task"
echo "    "
option=0
while [ $option -lt 8 ]                             #creating menu
do

          echo "choose any option:"                                                                                         #printing some statements
          echo " 1) create/delete a test user "
          echo " 2) creating a dummy file with a size"
          echo " 3) Display bash features "
          echo " 4) Display contents of a file present in the working directory along with line numbers and end marker $"
          echo " 5) Display the count of number of files in a directory(and subdirectories)"
          echo " 6) Display the count of the number of bytes in the existing directory in B/KB/MB/GB formats"
          echo " 7) Exit"
          read option
          case $option in 
          1) echo "  "
             echo "...create/delete a test user "

             ;;
          2) echo "  "
             echo "creating a dummy file with a size"
             read file_name                                     #talking file name from user
             read file_size                                     #taking file size from user

             dd if=/dev/zero of=$file_name  bs=$file_size count=1          #command to make a file

             ;;
          3) echo "  "
             echo "Display bash features"

             echo "BASH Details are as "

            echo "BASH VERSION IS $BASH_VERSION"                        #bash variables
            echo "BASH HOME IS $HOME"
            echo "BASH PWD IS $PWD"
            echo "BASH NAME  IS $BASH"
            echo "BASH MACHTYPE identifies the system hardware $MACHTYPE"   #bash variables
            echo "Enter flag name"
            read flag                     
            set -$flag | grep -c on                                       #checking flag status
                       

            ;;
          4) echo "  "
            echo "Display contents of a file present in the working directory along with line numbers and end marker $"
            echo "contents of a file are"                                   
            echo 
            echo "Enter file name"                                  
            read file_name
            cat -n -b $file_name |while read p                                                #inserting numbers in front of a line 
            do 
            echo $p 
            done

            ;;
         5) echo "   "
            echo "Display the count of number of files in a directory(and subdirectories)"
            echo "Enter directory path"
            read directory_path
                                         
            if [ -d "$@" ]; then                                                                 #if statement to count numbers of file a directory
            echo "Number of files is $(find "$@" -type f | wc -l)"
           
            else
            echo "[ERROR]  Please provide a directory."
            fi
            ;;
         6) echo "   "
            echo "Display the count of the number of bytes in the existing directory in B/KB/MB/GB formats"
            
            read path

            [ -d "$path" ] || exit                                                                 #counting file size in bytes

            path=$(stat -c%s "$path") 
            echo "$path B"
            
            ;;
        7)
        exit 
        ;;
        esac
done
       



