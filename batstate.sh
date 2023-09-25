#!/bin/bash

state_file="/home/dl/.config/waybar/state.txt"

if [ ! -f "$state_file" ]; then
  powerprofilesctl set power-saver
  echo "power-saver" > "$state_file"
  echo "Battery mode switched to Power Saver"
  exit 0
fi

current_mode=$(cat "$state_file")

case "$current_mode" in
  "power-saver")
    powerprofilesctl set balanced
    echo "balanced" > "$state_file"
    notify-send "Battery mode switched to Balanced"
    ;;
  "balanced")
    powerprofilesctl set performance
    echo "performance" > "$state_file"
    notify-send "Battery mode switched to Performance"
    ;;
  *)
    powerprofilesctl set power-saver
    echo "power-saver" > "$state_file"
    notify-send "Battery mode switched to Power Saver"
    ;;
esac
