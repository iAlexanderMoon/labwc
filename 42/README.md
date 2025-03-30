# README

## Install rebasing on ostree

* don't forget to pin a working ostree image as a backup

```sh
rpm-ostree rebase ostree-unverified-registry:ghcr.io/ialexandermoon/labwc:42
systemctl reboot
```

# Image Composition

## From Universal Blue "sway-atomic-main:42" 

* Base [ublue-os/sway-atomic-main](https://github.com/ublue-os/main/pkgs/container/sway-atomic-main)
  * [https://github.com/ublue-os/main](https://github.com/ublue-os/main)

## Labwc 

* fedora packages https://packages.fedoraproject.org/
  * labwc
  * wlopm
  * chayang