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
    <keybind key="W-l"><action name="Execute" command="swaylock" /></keybind>

    <keybind key="W-1"><action name="GoToDesktop" to="1" /></keybind>
    <keybind key="W-2"><action name="GoToDesktop" to="2" /></keybind>
    <keybind key="W-3"><action name="GoToDesktop" to="3" /></keybind>
    <keybind key="W-4"><action name="GoToDesktop" to="4" /></keybind>

    <keybind key="W-S-1"><action name="SendToDesktop" to="1" follow="yes" wrap="yes" /></keybind>
    <keybind key="W-S-2"><action name="SendToDesktop" to="2" follow="yes" wrap="yes" /></keybind>
    <keybind key="W-S-3"><action name="SendToDesktop" to="3" follow="yes" wrap="yes" /></keybind>
    <keybind key="W-S-4"><action name="SendToDesktop" to="4" follow="yes" wrap="yes" /></keybind>

    <keybind key="W-C-1"><action name="MoveToOutput" output="DP-1" direction="value" wrap="no" /></keybind>
    <keybind key="W-C-2"><action name="MoveToOutput" output="DP-2" direction="value" wrap="no" /></keybind>
    <keybind key="W-C-3"><action name="MoveToOutput" output="DP-3" direction="value" wrap="no" /></keybind>

    <keybind key="W-S-Right"><action name="MoveToOutput" direction="right" wrap="no" /></keybind>
    <keybind key="W-S-Left"><action name="MoveToOutput" direction="left" wrap="no" /></keybind>

  </keyboard>
```

* $HOME/.config/menu.xml
* Root: Primary Left Mouse Click on Screen
* Custom: Secondary: Right Mouse Click on Screen
  * Use a labwc-menu-generator to create a launcher for installed applications
```xml
<menu id="root-menu">
  <!-- Make client-list-combined-menu a submenu of root-menu 
       You must supply a label or it will not appear in root-menu -->
  <!--
  <menu id="client-list-combined-menu" label="Running..." />
  -->

  <separator label="Quick" />

  <item label="Terminal">
    <action name="Execute" command="foot" />
  </item>
  <item label="File Browser">
    <action name="Execute" command="Thunar" />
  </item>
  <item label="Web Browser">
    <action name="Execute" command="flatpak run org.mozilla.firefox" />
  </item>
  <item label="Email">
    <action name="Execute" command="flatpak run org.mozilla.Thunderbird" />
  </item>
  <item label="VSCodium">
    <action name="Execute" command="flatpak run com.vscodium.codium" />
  </item>
  <item label="VSCode">
    <action name="Execute" command="flatpak run com.visualstudio.code" />
  </item>

  <separator/>

  <item label="Lock Screen">
    <action name="Execute" command="swaylock" />
  </item>

</menu>

<menu id="some-custom-menu">
  <!--
    Creates menu title.
    To create an empty header with no text,
    set label=" ", not label=""
  -->
  <separator label="Full" />

  <item label="Reconfigure">
    <action name="Reconfigure" />
  </item>

  <separator/>

  <!-- Pipemenu -->
  <menu id="" label="Application" execute="labwc-menu-generator -p"/>

  <separator/>

  <item label="Logout">
    <action name="Exit" />
  </item>


  <separator/>

  <item label="Reboot">
    <action name="Execute" command="systemctl -i reboot" />
  </item>
  <item label="Poweroff">
    <action name="Execute" command="systemctl -i poweroff" />
  </item>
</menu>

```


### Multiple Monitors
* Labwc calls each monitor an output
* You can use actions MoveToOutput instead of SendToDesktop
* Each desktop has the full set of outputs



## OTHER
./usr/bin/labwc-menu-generator


## Themes
 ~/.local/share/themes/