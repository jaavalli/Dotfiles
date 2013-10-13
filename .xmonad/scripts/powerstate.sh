#!/bin/bash

LOW_LEVEL=20
ACPI=`acpi`
CAPACITY=$(cat /sys/class/power_supply/BAT0/capacity)
STATUS=$(cat /sys/class/power_supply/BAT0/status)
POSITION=$(echo `expr index "$ACPI" "%"` + 2)
REMAINING=${ACPI:POSITION:8} 

if [ $CAPACITY -lt $LOW_LEVEL ]; 
	then
	
	echo -n " Battery low! "
fi

echo  "${CAPACITY}% $STATUS $REMAINING"

