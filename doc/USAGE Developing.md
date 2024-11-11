# Development Setup
* container based development: podman or docker
* labwc-dx:41
* add user
```
rpm-ostree rebase ostree-unverified-registry:ghcr.io/ialexandermoon/labwc-dx:41
systemctl reboot
sudo usermod -aG docker $USER
systemctl reboot
```
## Tools
```sh
flatpak install flathub com.visualstudio.code
```

## Go

## Rust

## C

## C#