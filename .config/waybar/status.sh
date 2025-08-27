#!/bin/bash

STATUS_FILE="$HOME/.config/waybar/status"

# Ensure the status file exists
if [[ ! -f "$STATUS_FILE" ]]; then
  echo "1" >"$STATUS_FILE"
fi

# Read current status
STATUS=$(<"$STATUS_FILE")

if [[ "$STATUS" == "1" ]]; then
  # 1.sh actions
  swww img /home/toby/Pictures/wallpapers/favourites/20.png --transition-type wipe --transition-angle 30 --transition-step 90
  mv /home/toby/.config/waybar/style.css /home/toby/.config/waybar/2.css
  sleep 1.3
  mv /home/toby/.config/waybar/1.css /home/toby/.config/waybar/style.css
  sleep 1.3
  /home/toby/.config/waybar/reload

  # Toggle status
  echo "2" >"$STATUS_FILE"

elif [[ "$STATUS" == "2" ]]; then
  # 2.sh actions
  swww img /home/toby/Pictures/wallpapers/favourites/03.png --transition-type wipe --transition-angle 30 --transition-step 90
  mv /home/toby/.config/waybar/style.css /home/toby/.config/waybar/1.css
  sleep 1.3
  mv /home/toby/.config/waybar/2.css /home/toby/.config/waybar/style.css
  sleep 1.3
  /home/toby/.config/waybar/reload

  # Toggle status
  echo "1" >"$STATUS_FILE"

else
  echo "Invalid status. Resetting to 1."
  echo "1" >"$STATUS_FILE"
fi
