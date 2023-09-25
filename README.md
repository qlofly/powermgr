# powermgr
### Simple power modes for tiling wm
How to install on arch:
1. Install ` yay -S power-profiles-daemon`
2. Copy bash script to the desired directory
3. Add the script launch to the desired location. In my case, this is the waybar battery module for sway:
```css
"battery": {
    "states": {
      "good": 95,
      "warning": 30,
      "critical": 20
    },
    "format": "{icon} {capacity}%",
    "format-charging": " {capacity}%",
    "format-plugged": " {capacity}%",
    "format-icons": ["\uf244", "\uf243", "\uf242", "\uf241", "\uf240"],
    "on-click": "$HOME/.config/waybar/batstate.sh",
  }
```
After that, I can change modes by simply clicking on the battery module and get a notification about the current mode
