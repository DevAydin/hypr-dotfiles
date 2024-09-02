#!/bin/bash

# Get current volume level
current_volume=$(playerctl volume --player=spotify 2>/dev/null)

# Check if playerctl returned a valid number
if ! [[ "$current_volume" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Error: Could not retrieve Spotify volume. Ensure Spotify is running."
    exit 1
fi

# Check if volume increase or decrease
if [ "$1" == "--inc" ]; then
    # Increase volume by 5%
    new_volume=$(echo "$current_volume + 0.05" | bc)
    if (( $(echo "$new_volume > 1.0" | bc -l) )); then
        new_volume=1.0
    fi
    notify-send "Spotify Volume" "Volume Increased to $(echo "$new_volume * 100" | bc)%"
elif [ "$1" == "--dec" ]; then
    # Decrease volume by 5%
    new_volume=$(echo "$current_volume - 0.05" | bc)
    if (( $(echo "$new_volume < 0.0" | bc -l) )); then
        new_volume=0.0
    fi
    notify-send "Spotify Volume" "Volume Decreased to $(echo "$new_volume * 100" | bc)%"
else
    echo "Usage: $0 [--inc|--dec]"
    exit 1
fi

# Set the new volume
playerctl volume "$new_volume" --player=spotify
