#!/bin/bash

WM_DESKTOP=$(xdotool getwindowfocus)

if [ $WM_DESKTOP == "2254" ]; then
    
    echo ""

else

    WM_CLASS=$(xprop -id $(xdotool getactivewindow) WM_CLASS | awk 'NF {print $NF}' | sed 's/"/ /g')

    echo $( echo $WM_CLASS | sed 's/.*/\u&/' )

fi

