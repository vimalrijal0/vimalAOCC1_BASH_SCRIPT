#!/bin/bash

#yellow start 
	YS="\e[1;33m"
#blue start 
	BS="\e[0;34m"
#color end
	CE="\e[0m"
#red start
	RS="\e[1;31m"
#black start
	BLS="\e[0;30m"
#dark gray start
	DGYS="\e[1;30m"
#light blue start
	LBS="\e[1;34m"
#green start
	GNS="\e[0;32m"
#light green start
	LGNS="\e[1;32m"
#cyan start
	CYS="\e[0;36m"
#light cyan start
	LCYS="\e[1;36m"
#light red start
	DRS="\e[0;31m"
#purple start
	PS="\e[0;35m"
#light purple start
	LPS="\e[1;35m"
#brown start
	BRS="\e[0;33m"
#light gray start
	LGYS="\e[0;37m"
#white start
	WHS="\e[1;37m"
SCRIPT=`echo script`		
WLAN0=wlan0
ETH0=eth0
echo 
echo  " $YS      V           V  I I I I  M       M      A       L	                $YS "
echo  " $YS 	V	  V	 I     M M   M M     A A      L		        $YS "
echo  " $YS	 V  	 V	 I     M  M M  M    A	A     L                 $YS "
echo  " $YS 	  V     V 	 I     M   M   M   A A A A    L	                $YS "
echo  " $YS  	   V   V	 I     M       M  A	  A   L	                $YS "
echo  " $YS  	     V	      I I I I  M       M A	   A  L L L L 	$SCRIPT $YS "
echo 
echo 
echo 
echo 
echo " 1) ifconfig "
echo 
echo " 2) iwconfig "
echo 
echo " 3) What is my IP? " 
echo 
read choice
case "$choice" in 
	1)  ifconfig ;;
	2)  iwconfig ;; 
	3) 
		echo " enter you interface EXAMPLE < wlan0 / eth0 > "
		echo " wlan0 = 1"
	        echo " eth0 = 2"	
		read interface
		if [ $interface -eq 1 ]
			then
		first=`ifconfig wlan0 | grep netmask | awk '{print $2}'`
		clear
		echo $first
		
	        elif [ $interface -eq 2 ] 
		       then	
		second=`ifconfig eth0 | grep netmask | awk '{print $2}'`
		clear
		echo $second
		 
		fi

		;;
esac	

	

