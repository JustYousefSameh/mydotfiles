#!/bin/bash

# Toggle the mute state
pactl set-source-mute @DEFAULT_SOURCE@ toggle

# Check the new state
MUTE_STATE=$(pactl get-source-mute @DEFAULT_SOURCE@)

if [[ $MUTE_STATE == *"yes"* ]]; then
    notify-send -a Microphone -t 1400 -i microphone-sensitivity-muted-symbolic "Microphone" "MUTED"
else
    notify-send -a Microphone -t 1400 -i microphone-sensitivity-high-symbolic "Microphone" "UNMUTED"
fi
