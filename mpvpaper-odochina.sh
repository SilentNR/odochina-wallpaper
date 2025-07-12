#!/bin/bash

SCRIPT_DIR="$(dirname "$(realpath "$0")")"
WALLPAPER_DIR="$SCRIPT_DIR/wallpapers"

if ! command -v mpvpaper &> /dev/null; then
    echo "❌ mpvpaper is not installed. Please install it first."
    exit 1
fi

echo "Select Wallpapers:"
echo "1 - Teto-inout + Miku-inout"
echo "2 - Teto-nod + Miku-nod"
echo "3 - Teto + Miku"
echo "kill - Stop mpvpaper"
read -p "Enter your choice: " choice

case $choice in
    1)
        killall mpvpaper 2>/dev/null
        mpvpaper DP-1 "$WALLPAPER_DIR/Teto-inout.mp4" &
        mpvpaper HDMI-A-1 "$WALLPAPER_DIR/Miku-inout.mp4" &
        ;;
    2)
        killall mpvpaper 2>/dev/null
        mpvpaper DP-1 "$WALLPAPER_DIR/Teto-nod.mp4" &
        mpvpaper HDMI-A-1 "$WALLPAPER_DIR/Miku-nod.mp4" &
        ;;
    3)
        killall mpvpaper 2>/dev/null
        mpvpaper DP-1 "$WALLPAPER_DIR/Teto.mp4" &
        mpvpaper HDMI-A-1 "$WALLPAPER_DIR/Miku.mp4" &
        ;;
    kill)
        killall mpvpaper 2>/dev/null
        echo "Stopped all mpvpaper instances."
        ;;
    *)
        echo "❌ Invalid input: $choice"
        ;;
esac
