# TODO

## Builds
* Change github container path directory? 
  * Instead of everything building to ghcr.io/ialexandermoon/labwc can we make a subdirectory for ublue or something?
  * ghcr.io/ialexandermoon/ublue/labwc

## Waybar Customizations
* show workspaces
* switch workspaces
* click on date to launch calendar app
* wlr/workspaces: Unknown module: wlr/workspaces

```json
"wlr/workspaces": {
	"format": "{name}: {icon}",
	"format-icons": {
		"1": "",
		"2": "",
		"3": "",
		"4": "",
		"5": "",
		"active": "",
		"default": ""
	},
	"sort-by-number": true
}
```

```
pkill waybar, waybar & disown
```

## Try other panel bars
* xfce4panel
```
```


## Themes
* waybar show workspaces: UNFORTUNATELY, Not currently possible with waybar
* https://www.reddit.com/r/unixporn/comments/188ok2j/labwc_a_nice_simple_wayland_desktop/


## Change grub bootloader image name
* How can we change the bootloader image (Sway Atomic) Where is that done?

## Change Greeter Background Image
* SDDM is the greeter being used.
* Simple Desktop Display Manager (SDDM) 

## Change background image for screen locker
* swaylock background image

## Alarm
* could we set an alarm for the clock to go off? swaybar?

## Developer Experience
* vscode: with devcontainer support (does flathub vscode work with host docker?)
  * doesn't seem to be try install vscode in the image and see how that works instead.

## Apps
* bitwarden: from flakhub?
* evolution-data-server
  * sync with carddav and caldav
  * use in thunderbird or geary or other mail
  * gnome-calendar or other
  * gnome-contacts or other


# 42
* Use docker from fedora packages until packages for 42 are published by docker 
* use dnf5

### Installed System Apps from fedora packages
* cosmic-term
* cosmic-player
* comsic-store
* cosmic-files
* cosmic-launcher
* cosmic-edit
* neovide? neovim.vscode?