#!/bin/bash

privkeys=$(ssh-add -l)
numprivkeys=$(ssh-add -l | wc -l)

if [ "$privkeys" = "Could not open a connection to your authentication agent." ]; then
	echo ""
elif [ "$privkeys" = "The agent has no identities." ]; then
	echo ""
elif [ "$numprivkeys" -gt "0" ]; then
	echo " ssh"
else 
	echo ""
fi
