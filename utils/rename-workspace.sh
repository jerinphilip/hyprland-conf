#!/bin/bash

# Get the current workspace ID
current_workspace_id=$(hyprctl activeworkspace -j | jq -r '.id')

# Prompt the user for a new workspace name using rofi
new_name=$(rofi -dmenu -p "name")

# Check if the user provided a new name
if [[ -n "$new_name" ]]; then
  # Dispatch the Hyprland command to rename the current workspace
  hyprctl dispatch renameworkspace "$current_workspace_id, $current_workspace_id:$new_name"
fi
