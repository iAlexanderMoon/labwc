# Wayland

## Multiple Monitors
* each monitor is called a screen
* wlr-randr for changing screen settings
* kanshi can be used to configure a profile (profiles are selected based on the display devices present)
* DisplayPort 1.2 allows for up to four 1920x1200/1080 or two 2560x1440 displays chained off a single port. 
* DisplayPort 1.4 can support up to four 4K monitors at 60Hz with Display Stream Compression

## wlr-randr 
* https://gitlab.freedesktop.org/emersion/wlr-randr/
* couldn't figure out how to rearrange the monitor order/screen with wlr-randr (use kanshi)
* based on the wlr-randr git repo their should be a man page but missing in base???

```sh
wlr-randr --help
wlr-randr
```

## Kanshi
* https://gitlab.freedesktop.org/emersion/kanshi

```
mkdir -p ~/.config/kanshi
touch ~/.config/kanshi/config
kanshi
```


```
# Configure output directives such as mode, position, scale and transform.
# Use wlr-randr to get your output names
# Example ~/.config/kanshi/config below:
#   profile {
#     output HDMI-A-1 position 1366,0
#     output eDP-1 position 0,0
#   }

kanshi >/dev/null 2>&1 &
```

### Configuration
* names and modes of outputs are listed by running wlr-randr
* position 0,0 is x,y with origin 0,0 being the lower left
* add the x of mode to the position x of a screen for the position x directly right of a screen
* add the y of mode to the position y of a screen for the position y directly above a screen 
* you can name your profile and kanshi will output which is selected
* the profile selected will be based on the outputs present

```sh
cat ~/.config/kanshi/config
Workstation {
  output DP-8 mode 2560x1440 position 0,0
  output DP-6 mode 2560x1440 position 2560,0
  output DP-4 mode 1920x1200 position 5120,0 
}
```