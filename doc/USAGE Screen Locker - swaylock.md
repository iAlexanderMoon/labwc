# Screen Locker - swaylock

* https://labwc.github.io/integration.html#session-lock
* labwc supports the ext-session-lock and ext-idle-notify protocols and you can use clients such as swaylock to lock your session.

## Swaylock 

* https://github.com/swaywm/swaylock
* swaylock is a screen locking utility for Wayland compositors. 
* It is compatible with any Wayland compositor which implements the ext-session-lock-v1 Wayland protocol.

## Swayidle

* https://github.com/swaywm/swayidle
* Idle management daemon, compatible with any Wayland compositor which implements the ext-idle-notify protocol.

### background image
* setup in /usr/share/backgrounds/


# ~/.config/labwc/autostart
* missing wlopm command to turn off the screen after 600 seconds!
  * https://git.sr.ht/~leon_plickat/wlopm

```sh
swayidle -w \
        timeout 300 'swaylock -f -c 000000' \
        timeout 600 'wlopm --off \*' \
        resume 'wlopm --on \*' \
        before-sleep 'swaylock -f -c 000000' >/dev/null 2>&1 &
```