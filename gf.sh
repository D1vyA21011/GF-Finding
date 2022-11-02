#!/bin/bash
clear 
bold="\e[1m"
red="\e[1;31m"
green="\e[32m"
blue="\e[34m"
endcolour="\e[0m"
echo
 echo                            
echo "      :'######:::'########: "
echo "      ##... ##:: ##.....:: "
echo "     ##:::..::: ##::::::: "
echo "     ##::'####: ######:::  "
echo "     ##::: ##:: ##...:::: "
echo "      ######::: ##::::::: "
echo "     :......::::..:::::::: "
echo 
echo
 
 
printf "${blue}"
echo "     Developed by D1vy@....     "
echo
echo
printf "${red}"
echo -n "Enter your domain name: "

printf "$endcolour"
read domain
 mkdir -p $domain $domain/params  $domain/dalfox 
 function param_dalfx(){

	python3 ~/tools/ParamSpider/./paramspider.py -d $domain -o $domain/params/params.txt

	if [ -z $1 ];then
		echo "Error Occured"
	fi
}
param_dalfx
 echo
 echo
 echo "select gf pattern"
echo
printf "${bold}"
echo "1-finding xss"
echo "2-finding sqli"
echo "3-finding ssrf"
echo "4-finding idor"
echo "5- finding redirection"
echo "6-finding lfi"
echo "7- finding rfi"
echo
echo -n "choise any one: "
printf "${endcolour}"
read scan 
 

case $scan in

 1) echo "finding xss"
     dalfox file $domain/params/params.txt -b divya22.xss.ht -o $domain/params/dalfox-xss.txt
   ;;
 2) echo "finding sqli"
    dalfox file $domain/params/params.txt -b divya22.xss.ht -o $domain/params/dalfox-sqli.txt
   ;;
 3) echo "finding ssrf"
    dalfox file $domain/params/params.txt -b divya22.xss.ht -o $domain/params/dalfox-ssrf.txt
    ;;
 4) echo "finding idor"
     dalfox file $domain/params/params.txt -b divya22.xss.ht -o $domain/params/dalfox-idor.txt     
    ;;
 5) echo "finding redirection"
    dalfox file $domain/params/params.txt -b divya22.xss.ht -o $domain/params/dalfox-redirection.txt 
    ;;
  6) echo "finding lfi"
     dalfox file $domain/params/params.txt -b divya22.xss.ht -o $domain/params/dalfox-lfi.txt
     ;;
  7) echo "finding rfi"
     dalfox file $domain/params/params.txt -b divya22.xss.ht -o $domain/params/dalfox-rfi.txt 
     ;;

esac

end=$( date +%s )
timetaken=$(( $start - $end ))





 



	
