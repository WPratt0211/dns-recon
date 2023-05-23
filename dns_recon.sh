#!/bin/bash
clear
echo -n "Please Enter Your First Name: "
read firstname
if [ -z $firstname ];then
	echo "You did not enter a name."
	exit
fi
echo $firstname
echo -n "Please Enter Your Last Name: "
read lastname
if [ -z $lastname ];then
	echo "You did not enter a last name"
	exit
fi
echo "Starting recon on $firstname $lastname"
read -p "Press <enter> to continue."
sleep 4
firefox http://intodns.com/$domain &
sleep 1
firefox http://www.dnsinspect.com/$domain/10382931 &
sleep 1
firefox http://dnschecker.org/all-dns-records-of-domain.php?query=$domain&rtype=ANY &
sleep 1
firefox http:/www.viewdns.info/dnsreport/?domain=$domain &
