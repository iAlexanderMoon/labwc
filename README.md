# README
* Add labwc to universal blue sway-atomic-main
* Built on Universal Blue "sway-atomic-main:version"
  * https://github.com/ublue-os/main
  * https://github.com/ublue-os/main/pkgs/container/sway-atomic-main/versions?filters%5Bversion_type%5D=tagged
* Published to:
  * ostree-unverified-registry:ghcr.io/ialexandermoon/labwc:{{version}}
  * ostree-image-signed:ghcr.io/ialexandermoon/labwc:{{version}}
  * https://github.com/iAlexanderMoon/labwc/pkgs/container/labwc

## Image contents from sway atomic
* https://fedoraproject.org/atomic-desktops/sway/
* sddm: greeter
* foot: terminal
* swaylock : screen locker
* waybar : customizable bar for sway
* rofi : A window swttcher, application launcher and dmenu replacement
  * rofi -show window
  * rofi -show run
  * rofi -show drun
* dunst : notification daemon
* kanshi : dynamic display configuration tool
* Thunar : wayland file manager
* grim & slurp : screenshots
* firefox: web browser

## Image contents from ublue main
* https://github.com/ublue-os/main/blob/main/build_files/install.sh
  * ujust
  * brew
  * dnf5

## Image contents added here
* labwc

### Image Customizations
* ADD MORE CONTENT HERE

# Install
* From an ostree based system
  * Although your current running system will be the fallback you can always pin it manually to keep it around before rebasing below
  * see ostree admin pin <number>

# Update
* update all
* system image
* flatpaks
* brew

```sh
ujust update
```
or
```
sudo bootc upgrade
```

```
flatpak update -y
```

```
brew upgrade 
```
  
## Rebase to unverified to get the signing key and reboot
```sh 
rpm-ostree rebase ostree-unverified-registry:ghcr.io/ialexandermoon/labwc:{{version}}
rpm-ostree rebase ostree-unverified-registry:ghcr.io/ialexandermoon/labwc-dx:{{version}}
systemctl reboot
```
## Rebase to the signed version
```sh
rpm-ostree rebase ostree-image-signed:ghcr.io/ialexandermoon/labwc:{{version}}
systemctl reboot
```

# Other notes
* ostree commands
* rpm-ostree commands

```sh
ostree admin status

rpm-ostree status 
```

