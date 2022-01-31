#!/bin/sh
#############################################
#               DWM Statusbar               #
#############################################
while true; do 
    network="$(/usr/local/bin/sb-network-simple)"
    onedrivestatus="$(/usr/local/bin/sb-onedrive)"
    player="$(/usr/local/bin/sb-playerctl)"
    weather="$(/usr/local/bin/sb-weather)"
    xsetroot -name "$player $weather $onedrivestatus$network$(date +" %a %b %d  | %l:%M %p ")"
    remove_weatherreport
    sleep 1
done &

remove_weatherreport{
while true; do
   rm $HOME/.local/share/todayweather 
   sleep 5m
done &
}

#############################################
