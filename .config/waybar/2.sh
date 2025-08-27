#!/bin/bash
swww img /home/toby/Pictures/wallpapers/favourites/03.png --transition-type wipe --transition-angle 30 --transition-step 90
mv /home/toby/.config/waybar/style.css /home/toby/.config/waybar/1.css
sleep 0.5
mv /home/toby/.config/waybar/2.css /home/toby/.config/waybar/style.css
sleep 0.5
/home/toby/.config/waybar/reload
