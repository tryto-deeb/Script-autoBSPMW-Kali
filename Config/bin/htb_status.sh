#!/bin/sh

IFACE=$(/usr/sbin/ifconfig | grep tun0 | awk '{print $1}' | tr -d ':')

if [ "$IFACE" = "tun0" ]; then
	echo "%{F#CCCC00} %{F#CCCC00}$(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{print $2}')%{u-}"
	echo "$(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{print $2}')" > /home/user/.config/bin/htb_ip
else
	echo "%{F#CCCC00}%{u-} %{F#666633}Disconnected"
	echo "" > /home/user/.config/bin/htb_ip
fi

