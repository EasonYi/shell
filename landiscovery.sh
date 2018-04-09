#!/bin/bash 
# Author: Eason Yi 
# Date: 2017-07-27

function discovery(){
	t=$1
    echo "[INFO] Starting for $t ..."

    file_prefix=ld-${t/\//-}-$(date "+%F-%T")
	allhosts_file=$file_prefix.allhosts
	livehosts_file=$file_prefix.livehosts
    discovered_file=$file_prefix.discovered
    hostsports_file=$file_prefix.discoveredhostsports
    hosts_file=$file_prefix.discoveredhosts
    ports_file=$file_prefix.discoveredports
    #nmap_scan_option="-v -sn -D RND: -T5 --max-retries 2 --host-timeout 10s --min-parallelism 100"
    #nmap_discovery_option="-v -A -sV -Pn -D RND: -T5 --max-retries 2 --host-timeout 30s --min-parallelism 50"
    nmap_scan_option="-v -sn -D RND: -T5 --max-retries 2 --min-parallelism 100"
    nmap_discovery_option="-v -A -sV -Pn -D RND: -T5 --max-retries 2 --min-parallelism 50"
    echo "[INFO] sudo nmap $nmap_scan_option "
    echo "[INFO] sudo nmap $nmap_discovery_option "

    echo "[INFO] Finding live hosts ..."
    sudo nmap $nmap_scan_option $t | tee $allhosts_file
    echo "[INFO] Found live hosts"
    awk '/Nmap scan/ && !/host down/ {printf "%s %s\n", $5, $6}' < $allhosts_file | tee $livehosts_file
    echo "[INFO] Finding OS and service version on live hosts ..."
    awk '{host=$1;if ($0 ~ /\(/) host=substr($2, 2, (length($2)-2));print host}' < $livehosts_file | xargs sudo nmap $nmap_discovery_option | tee $discovered_file
    echo "[INFO] Found live hosts and open ports"
    awk '/Discovered open port/ {printf "%s:%s\n", $6, $4}' < $discovered_file| sort | tee $hostsports_file
    echo "[INFO] Found uniq live hosts"
    awk -F: '{print $1}' < $hostsports_file | sort -u | tee $hosts_file
    echo "[INFO] Found uniq open ports"
    awk -F: '{print $2}' < $hostsports_file | sort -u | tee $ports_file
    echo "[INFO] Discovered files lines"
    wc -l $file_prefix.*
}

target=$1
if [[ $target == "-y" ]]; then
	auto_confirm=true
	target=$2
fi
if [[ -z $target ]]; then
  targets=$(ifconfig| awk '/inet 192.168./ || /inet 172.([1][6-9]|[2][0-9]|[3][0-1])./ || /inet 10./ {cmd = "dc -e 16i2o"toupper(substr($4,3))"p";cmd | getline subnetmask;close(cmd);gsub("0","",subnetmask);printf "%s/%s\n",$2,length(subnetmask)}')
  echo "[INFO] Found LAN info in your machine"
  echo $targets
  if [[ $auto_confirm != "true" ]]; then
	  read -p "[INFO] do you want to discovery LAN info above?(y/n)" confirm
	  if [[ $confirm != 'y' ]]; then
	  	echo "[INFO] Canceld."
	  	exit 1
	  fi
  fi
  for t in $targets; do
  	if [[ $auto_confirm != "true"  && $t == "192.168.99.1/24" ]]; then
  		echo "[INFO] Found docker machine LAN $t"
  		read -p "[INFO] do you want to discovery LAN of docker?(y/n)" confirm
		if [[ $confirm != 'y' ]]; then
		  echo "[INFO] Ignored docker LAN."
		  continue
		fi
  	fi
    discovery $t
  done
else
  echo "[INFO] You asked for the following LAN info"
  echo $target
  if [[ $auto_confirm != "true"  ]]; then
	  read -p "[INFO] do you want to discovery LAN info above?(y/n)" confirm
	  if [[ $confirm != 'y' ]]; then
	  	echo "[INFO] Canceld."
	  	exit 1
	  fi
  fi
  discovery $target
fi
