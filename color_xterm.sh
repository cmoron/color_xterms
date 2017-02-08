#!/usr/bin/env bash

# ===============================================
#   C O L O R  X T E R M                        =
# ===============================================
#
# Launch randomed colorized xterminals
#
# ===============================================

# My fun colors
XTERM_COLORS=(
    'lightgreen'
    'lime'
    'skyblue'
    'gold'
    'coral'
)

# FG is BLACK !
DEFAULT_FG_COLOR="black"
XTERM_COLORS_SIZE=${#XTERM_COLORS[@]}

terms_number=1
if [ $# -ge 1 ]; then
    if [[ $1 =~ ^[0-9]+$ ]]; then
        terms_number=$1
    else 
        echo "Usage: color_xterm [number]"
        exit 1
    fi
fi


counter=0

while [ $counter -lt $terms_number ]; do
    selected_color=${XTERM_COLORS[$((RANDOM%XTERM_COLORS_SIZE))]}
    xterm -bg $selected_color -fg $DEFAULT_FG_COLOR &
    counter=$[counter + 1]
done

# ===============================================
#  END: C O L O R  X T E R M                    =
# ===============================================
