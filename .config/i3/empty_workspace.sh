new_workspace=$(($(i3-msg -t get_workspaces | tr , '\n' | grep '"num":' | cut -d : -f 2 | sort -rn | head -1) + 1))
if [[ $1 == "move" ]]; then
    i3-msg move container to workspace $new_workspace && i3 workspace $new_workspace
else
    i3-msg workspace $new_workspace
fi
