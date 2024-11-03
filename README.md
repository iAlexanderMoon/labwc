# README
* Add labwc to universal blue sericea (sway atomic desktop) variant
* Built on Universal Blue "sericea-main:version"
  * https://github.com/ublue-os/main
  * https://github.com/ublue-os/main/pkgs/container/sericea-main/versions?filters%5Bversion_type%5D=tagged
* Published to:
  * ostree-unverified-registry:ghcr.io/ialexandermoon/labwc:{{version}}
  * ostree-image-signed:ghcr.io/ialexandermoon/labwc:{{version}}
  * https://github.com/iAlexanderMoon/labwc/pkgs/container/labwc

## Image contents from Sericea
* foot: terminal
* swaylock : screen locker
* waybar : customizable bar for sway
* rofi : A window swttcher, application launcher and dmenu replacement
  * rofi -show window
  * rofi -show run
  * rofi -show drun
* dunst : notification daemon
* kanshi : dynamic display configruation tool
* Thunar : wayland file manager
* grim & slurp : screenshots

## Images contents added
* labwc

# Install
* From an ostree based system
  * Although your current running system will be the fallback you can always pin it manually to keep it around before rebasing below
  * see ostree admin pin <number>

## Rebase to unverified to get the signing key and reboot
```sh 
rpm-ostree rebase ostree-unverified-registry:ghcr.io/ialexandermoon/labwc:{{version}}
systemctl reboot
```
## Rebase to the signed version
```sh
rpm-ostree rebase ostree-image-signed:ghcr.io/ialexandermoon/labwc:{{version}}
systemctl reboot
```



