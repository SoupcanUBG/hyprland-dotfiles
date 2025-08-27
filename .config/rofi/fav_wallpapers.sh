#!/bin/bash

# Directory containing wallpapers
wall_dir="$HOME/Pictures/wallpapers/favourites/"

# List files in the wallpaper directory and let rofi pick one
chosen=$(ls "$wall_dir" | rofi -dmenu -i -p "Select wallpaper:" \
  -theme "$HOME/.config/rofi/catppuccin-lavrent-mocha.rasi")

# If user cancels, exit
[ -z "$chosen" ] && exit 0

# Run swww with transition
swww img "$wall_dir/$chosen" --transition-type wipe --transition-angle 30 --transition-step 90
wallust run "$wall_dir/$chosen"
