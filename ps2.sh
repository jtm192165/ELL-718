
#!/bin/sh

 function pause(){
	local message="$@"
	[ -z $message ] && message="Press [Enter] key to continue..."
	read -p "$message" readEnterKey
}

function show_menu(){
    date
    echo "---------------------------"
    echo "   Main Menu"
    echo "---------------------------"
	echo "1. Customer"
	echo "2. Staff"
	echo "3. Owner"
	echo "4. exit"
}

function write_header(){
	local h="$@"
	echo "---------------------------------------------------------------"
	echo "     ${h}"
	echo "---------------------------------------------------------------"
}

function username(){
	write_header " Customer "
        read -p 'username :' Mno
	echo "customer ID: $Mno"
        date
    echo "---------------------------"
    echo "   Main Menu"
    echo "---------------------------"
	echo "1. Book a ticket for self"
	echo "2. exit"
local c
	read -p "Enter your choice  " c
	case $c in
		1)	ticktb ;;
		2)	echo "Thankyou Bye!"; exit 0 ;;
		*)	echo "Please select between 1 to 2 choice only."
			pause
	esac
while true
do
	clear
 	show_menu	# display memu
 	read_input
        read_input1  # wait for user input
done
     
        #pause "Press [Enter] key to continue..."
	pause
}

function ticktb(){
	write_header " Ticket Booking "
        
         echo "---------------------------"
    echo "   Main Menu"
    echo "---------------------------"
	echo "1. Seat availbility"
        echo "2. book show"
	echo "3. exit"

       
	       
 local c
	read -p "Enter your choice  " c
	case $c in
		1)	cat seats.txt;;
                2)	read -p 'Show number' sno
                        read -p 'Day of Show' ds
                        read -p 'No. of Tickets' nt
                        echo
                        echo "Show number $sno"
                        echo "Day of Show $ds"
                        echo "No. of Tickets $nt"
                        book;;
		3)	echo "Thankyou Bye!"; exit 0 ;;
		*)	echo "Please select between 1 to 2 choice only."
			pause
	esac	

#pause "Press [Enter] key to continue..."
	pause
}
function book(){
	while[$a ]
}



function staff_info(){
	write_header " Staff Member "
        read -p 'username :' 
	echo "username: $name"
        
	
	#pause "Press [Enter] key to continue..."
	pause
}

function read_input(){
	local c
	read -p "Enter your choice [ 1 - 4 ] " c
	case $c in
		1)	username ;;
		2)	staff_info ;;
		3)	owner_info ;;
		4)	echo "Thankyou Bye!"; exit 0 ;;
		*)	
			echo "Please select between 1 to 4 choice only."
			pause
	esac
}

# main logic
while true
do
	clear
 	show_menu	# display memu
 	read_input
        read_input1  # wait for user input
done