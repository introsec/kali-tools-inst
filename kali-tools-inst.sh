#!/bin/bash

################################################################################
#
#    filename: kali-tools-inst.sh
# description: Script to install kali tools on RPI2/3
#      author: Andre Mattie
#       email: devel@introsec.ca
#         GPG: 5620 A200 6534 B779 08A8  B22B 0FA6 CD54 93EA 430D
#     bitcoin: 1LHsfZrES8DksJ41JAXULimLJjUZJf7Qns
#        date: 03/24/2017
#
################################################################################

# variables
RED='\033[0;41;30m'
STD='\033[0;0;39m'

# ensure script is run as root
if [ "$(id -u)" -ne "0" ] ; then
    echo "You must be root to run this script"
    exit 1
fi

# define menu option commands
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}

all(){
	echo "Installing kali-linux-all"
	apt-get update 
	apt-get install -y kali-linux-all
        pause
}

full(){
	echo "Installing kali-linux-full"
	apt-get update
	apt-get install -y kali-linux-full
        pause
}

pwtools(){
	echo "Installing kali-linux-pwtools"
	apt-get update
	apt-get install -y kali-linux-pwtools
        pause
}

web(){
	echo "Installing kali-linux-web"
	apt-get update
	apt-get install -y kali-linux-web
        pause
}

wireless(){
	echo "Installing kali-linux-wireless"
	apt-get update
	apt-get install -y kali-linux-wireless
        pause
}

forensic(){
	echo "Installing kali-linux-forensic"
	apt-get update
	apt-get install -y kali-linux-forensic
        pause
}

gpu(){
	echo "Installing kali-linux-gpu"
	apt-get update
	apt-get install -y kali-linux-gpu
        pause
}

rfid(){
	echo "Installing kali-linux-rfid"
	apt-get update
	apt-get install -y kali-linux-rfid
        pause
}

sdr(){
	echo "Installing kali-linux-sdr"
	apt-get update
	apt-get install -y kali-linux-sdr
        pause
}

voip(){
	echo "Installing kali-linux-voip"
	apt-get update
	apt-get install -y kali-linux-voip
        pause
}

top10(){
	echo "Installing kali-linux-top10"
	apt-get update
	apt-get install -y kali-linux-top10
        pause
}

nethunter(){
	echo "Installing kali-linux-nethunter"
	apt-get update
	apt-get install -y kali-linux-nethunter
        pause
}

# Display menu
show_menus() {
	clear
	echo "################################################################################"
	echo "#"
	echo "#    filename: kali-tools.sh"
	echo "#     version: 1.0.1"
	echo "# description: Script to install kali tools on RPI2/3"
	echo "#      author: Andre Mattie"
	echo "#       email: devel@introsec.ca"
	echo "#         GPG: 5620 A200 6534 B779 08A8  B22B 0FA6 CD54 93EA 430D"
	echo "#     bitcoin: 1LHsfZrES8DksJ41JAXULimLJjUZJf7Qns"
	echo "#        date: 03/24/2017"
	echo "#"
	echo "################################################################################"
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	echo " M A I N - M E N U"
	echo "~~~~~~~~~~~~~~~~~~~~~"
	echo "1) install kali-linux-all"
	echo "2) install kali-linux-full"
	echo "3) install kali-linux-pwtools"
	echo "4) install kali-linux-web"
	echo "5) install kali-linux-wireless"
	echo "6) install kali-linux-forensic"
	echo "7) install kali-linux-gpu"
	echo "8) install kali-linux-rfid"
	echo "9) install kali-linux-sdr"
	echo "10) install kali-linux-voip"
	echo "11) install kali-linux-top10"
	echo "12) install kali-linux-nethunter"
	echo "99) Exit script"

}

# get choice from user
read_options(){
	local choice
	read -p "Enter choice [ 1 - 12] " choice
	case $choice in
		1) all ;;
		2) full ;;
		3) pwtools ;;
		4) web ;;
		5) wireless ;;
		6) forensic ;;
		7) gpu ;;
		8) rfid ;;
		9) sdr ;;
		10) voip ;;
		11) top10 ;;
		12) nethunter ;;
		99) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}

# define escapes 
trap '' SIGINT SIGQUIT SIGTSTP

# main logic (infinite loop)
while true
do
	show_menus
	read_options
done