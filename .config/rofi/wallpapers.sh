#!/bin/bash

wallpaper_directory="/home/toby/Pictures/wallpapers" # change the directory according to your preference

# all wallpapers
wallpapers=$(ls $wallpaper_directory)

# getting the current wallpaper with `swww query`
current_wallpaper_path=$(swww query | sed "s/.*image: \(.*\)/\1/")
current_wallpaper_name=${current_wallpaper_path:t}

# adding " (current)" to the current wallpaper
final_list=$(echo $wallpapers | sed "s/\($current_wallpaper_name\)/\1 (current)/")

# displaying the menu
selected_wallpaper=$(echo $final_list | rofi -dmenu) # add a theme to the rofi menu

# removing the added " (current)" from the selected wallpaper (no matter the item selected)
final_wallpaper=$(echo $selected_wallpaper | sed "s/ (current)//")

# changing the wallpaper and the colorscheme if selected wallpaper is not empty
if [[ $selected_wallpaper != "" ]]; then
  swww img $wallpaper_directory/$final_wallpaper --transition-type fade --transition-fps 60 --transition-step 100 &&
    wallust run $wallpaper_directory/$final_wallpaper -b kmeans -p dark16
fi
