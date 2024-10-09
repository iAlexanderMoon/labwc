# Labwc

## Installed Documentation
* /usr/share/doc/labwc

```sh
man labwc
man labwc-actions
man labwc-config
man labwc-menu
man labwc-theme
more /usr/share/doc/labwc/README
more /usr/share/doc/labwc/rc.xml.all 
```

## Workspaces
* Define the number and names of workspaces in rc.xml

## Default Keyboard Shortcuts
* /usr/share/doc/labwc/rc.xml.all contains all the default configurations. 

|Shortcut      | Action         |
|--------------|----------------|
|Alt-Tab       | NextWindow     |
|Alt-Tab-Shift | PreviousWindow |
|W-Left        | MoveToEdge Left|
|W-Right       | MoveToEdge Right|
|W-Top         | MoveToEdge Top|
|W-Down        | MoveToEdge Bottom|
|W-a           | ToggleMaximize Window |

## Configured Keyboard Shortcuts
* KEY-COMBINATION is the key combination which you want to bind to the actions.
* KEY-COMBINATION is: Modifier-Modifier-Key.
  * Any number of modifiers (0 or more) can be used together, and they are each separated by a "-". 

### Modifier keys 	
* S Shift key
* C Control key
* A Alt key
* W Super key (Usually bound to the Windows key on keyboards which have one)
* M Meta key
* H Hyper key (If it is bound to something) 

### Customization
* $HOME/.config/rc.xml
```xml
 <desktops number="4" />

  <keyboard>
    <default />

    <keybind key="W-F4"><action name="None" /></keybind>
    <keybind key="W-r"><action name="Reconfigure" /></keybind>
    <keybind key="W-Return"><action name="Execute" command="foot" /></keybind>
    <keybind key="W-d"><action name="Execute" command="rofi -show drun" /></keybind>
    <keybind key="W-Tab"><action name="Execute" command="rofi -show window" /></keybind>
    <keybind key="W-q"><action name="Exit"/></keybind>
    <keybind key="W-f"><action name="ToggleFullscreen"/></keybind>

    <keybind key="W-1"><action name="GoToDesktop" to="1" /></keybind>
    <keybind key="W-2"><action name="GoToDesktop" to="2" /></keybind>
    <keybind key="W-3"><action name="GoToDesktop" to="3" /></keybind>
    <keybind key="W-4"><action name="GoToDesktop" to="4" /></keybind>

    <keybind key="W-S-1"><action name="SendToDesktop" to="1" follow="yes" wrap="yes" /></keybind>
    <keybind key="W-S-2"><action name="SendToDesktop" to="2" follow="yes" wrap="yes" /></keybind>
    <keybind key="W-S-3"><action name="SendToDesktop" to="3" follow="yes" wrap="yes" /></keybind>
    <keybind key="W-S-4"><action name="SendToDesktop" to="4" follow="yes" wrap="yes" /></keybind>
  </keyboard>
```


## OTHER
./usr/bin/labwc-menu-generator


## Themes
 ~/.local/share/themes/