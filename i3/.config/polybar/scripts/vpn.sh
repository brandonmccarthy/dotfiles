#!/bin/bash

vpnconnected=$(nmcli -c no -f NAME,TYPE connection show --active | grep vpn | wc -l)
vpnname=$(nmcli -c no -f NAME,TYPE connection show --active | grep vpn | sed 's/  vpn//')

if [ "$vpnconnected" -eq "0" ]; then
	echo "off"
else
	echo "$vpnname"
fi
