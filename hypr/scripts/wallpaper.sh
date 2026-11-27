#!/usr/bin/env bash
dir="$HOME/Pictures/wallpapers"
choice=$(find "$dir" -type f \( -iname '*.png' -o -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.webp' \) -printf '%P\n' | sort | rofi -dmenu -p "Обои")
[ -z "$choice" ] && exit 0

hyprctl hyprpaper wallpaper ", $dir/$choice, cover"
sed -i "s|^\s*path = .*|    path = $dir/$choice|" "$HOME/.config/hypr/hyprpaper.conf"
