#!/usr/local/bin/bash

volume (){
	mixer -s vol | grep -Eo '[0-9]+$'
}

get_ip (){
	wget -q --tries=10 --timeout=20 --spider http://google.com
	if [[ $? -eq 0 ]]; then
		ifconfig wlan0 | grep 'inet' | awk -F ' ' '{ print $2 }'
	else
		echo "OFFLINE"
	fi
}

print_date (){
	date "+%b %d (%a), %H:%M "
}

battery (){
	batt=$(acpiconf -i 0 | sed '14q;d' | sed 's/[^0-9]*//g')

	echo -e ' BATT: '$batt'%'
}

while true
do
	xsetroot -name " VOL: $(volume)% | $(get_ip) | $(battery) | $(print_date)"
	sleep 1
done
