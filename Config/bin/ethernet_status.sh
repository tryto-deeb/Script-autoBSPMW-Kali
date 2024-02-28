#!/bin/sh

interface=$(/usr/sbin/ifconfig | grep -oP '^\w+(?=:)' | grep '^e')


echo "%{F#CCCC00} %{F#CCCC00}$(/usr/sbin/ifconfig $interface | grep "inet " | awk '{print $2}')%{u-}"

echo "$(/usr/sbin/ifconfig $interface | grep "inet " | awk '{print $2}')" > ~/.config/bin/my_ip


