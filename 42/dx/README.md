# README - dx

## Install rebasing on ostree

* don't forget to pin a working ostree image as a backup

```sh
rpm-ostree rebase ostree-unverified-registry:ghcr.io/ialexandermoon/labwc-dx:42
systemctl reboot
```

## Post-Install

### Add user to docker group

```sh
sudo usermod -aG docker $USER
```

# Image Composition

## From

* Base [ialexandermoon/labwc](https://github.com/iAlexanderMoon/labwc/pkgs/container/labwc)

## Docker

* Added from [Fedora Packages]( https://packages.fedoraproject.org/)
* Docker hasn't published community repos for fedora 42 because it hasn't been released yet.

## VSCODE

* Vscode doesn't work particularly well from a flatpak... so just include it.