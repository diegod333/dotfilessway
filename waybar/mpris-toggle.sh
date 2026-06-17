#!/bin/bash
status=$(playerctl status 2>/dev/null)

if [ "$status" = "Playing" ]; then
    echo " x "
else
    echo " o "
fi
