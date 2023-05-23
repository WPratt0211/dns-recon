#!/bin/bash
clear
echo -n "Please Enter The Domain Name "
read domain
if [ -z $domain ];then
	echo "You did not enter a domain."
	exit
fi
echo $domain
echo "Starting recon on $domain"
read -p "Press <enter> to continue."
sleep 4
firefox http://intodns.com/$domain &
sleep 1
firefox http://www.dnsinspect.com/$domain/10382931 &
sleep 1
firefox http://dnschecker.org/all-dns-records-of-domain.php?query=$domain&rtype=ANY &
sleep 1
firefox http:/www.viewdns.info/dnsreport/?domain=$domain &
