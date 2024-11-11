# XFCE4 Panel
* release of Xfce 4.18 in Dec 2022, Wayland support was added (MR103) to xfce4-panel including the layer-shell and foreign-toplevel-management protocols.

```
xfconf-query -c xfce4-panel -p /force-all-internal -t bool -s true --create
```

```sh
xfce4-panel -V
4.18.6 
```

```sh
xfce4-panel 
xfce4-panel: Failed to connect to session manager: Failed to connect to the session manager: SESSION_MANAGER environment variable not defined

(xfce4-panel:3200): Wnck-WARNING **: 21:52:17.326: libwnck is designed to work in X11 only, no valid display found

(xfce4-panel:3200): Wnck-WARNING **: 21:52:17.326: libwnck is designed to work in X11 only, no valid display found

(xfce4-panel:3200): Wnck-CRITICAL **: 21:52:17.326: wnck_screen_get_active_window: assertion 'WNCK_IS_SCREEN (screen)' failed
```

* Looks like the xfce4-panel version added is expecting X11.
* Maybe it's the way it's built and we need a special build WITHOUT X11?
```
--prefix=/usr --enable-wayland --disable-x11
```