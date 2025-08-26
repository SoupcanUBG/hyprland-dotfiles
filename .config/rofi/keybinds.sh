#!/bin/bash

THEME="/home/toby/.config/rofi/catppuccin-lavrent-mocha.rasi"

options="\
SUPER + Return        → Terminal
SUPER + B             → Browser
SUPER + E             → File Manager
SUPER + Q             → Kill Active Window
SUPER + M             → Exit Hyprland
SUPER + D             → App Launcher (Rofi)
SUPER + V             → Toggle Floating
SUPER + F             → Toggle Fullscreen
SUPER + Space         → Toggle Floating
SUPER + P             → Pseudo Split
SUPER + J             → Toggle Split
SUPER + SHIFT + S     → Screenshot (hyprshot)

SUPER + Arrow Keys    → Move Focus
SUPER + [1-9,0]       → Switch Workspace
SUPER + SHIFT + [1-9,0] → Move Window to Workspace
SUPER + S             → Special Workspace (magic)

SUPER + Scroll Up/Down → Cycle Workspaces
SUPER + Left-Click     → Move Window
SUPER + Right-Click    → Resize Window

XF86AudioRaiseVolume   → Volume Up
XF86AudioLowerVolume   → Volume Down
XF86AudioMute          → Mute
XF86AudioMicMute       → Mute Microphone
XF86MonBrightnessUp    → Brightness Up
XF86MonBrightnessDown  → Brightness Down

XF86AudioNext          → Next Track
XF86AudioPrev          → Previous Track
XF86AudioPlay          → Play / Pause
XF86AudioPause         → Play / Pause

SUPER + ALT + N        → Netflix
SUPER + ALT + Y        → YouTube
SUPER + ALT + D        → Discord
"

echo -e "$options" | rofi -dmenu -i -p "Hyprland Keybinds" -theme "$THEME"
