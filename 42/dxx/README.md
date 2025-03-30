# README - DXX


## Install rebasing on ostree

* don't forget to pin a working ostree image as a backup

```sh
rpm-ostree rebase ostree-unverified-registry:ghcr.io/ialexandermoon/labwc-dxx:42
systemctl reboot
```
# Image Composition

## From

* Base [ialexandermoon/labwc](https://github.com/iAlexanderMoon/labwc/pkgs/container/labwc-dx)

## Cosmic Apps

* Added from [Fedora Packages]( https://packages.fedoraproject.org/)
  * cosmic-term
  * cosmic-player
  * cosmic-store
  * cosmic-files
  * cosmic-launcher
  * cosmic-edit




