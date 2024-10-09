# README
* Built on Sericea the sway atomic desktop spin of fedora
* Sericea renamed to Fedora Sway Atomic 40
* labwc:latest is currently Fedora 40 
* Wherever possible continue to use the tools and services used for sway configured in the labwc environment

## Image Installed Tools
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

# Purpose

# https://fedoraproject.org/atomic-desktops/sway/

_ !!! VERY WIP !!! _ 

This repository is built using the template for building your own custom Universal Blue image. 

* Try adding labwc to a base image and/or any other tools or things I feel like.

* Successfull build will publish the image to the github container registry (ghcr)

# Install
* From an ostree based system
  * Although your current running system will be the fallback you can always pin it manually to keep it around before rebasing below
  * see ostree admin pin <number>

## Rebase to unverified to get the signing key and reboot
```sh 
rpm-ostree rebase ostree-unverified-registry:ghcr.io/ialexandermoon/labwc:latest
systemctl reboot
```
## Rebase to the signed version
```sh
rpm-ostree rebase ostree-image-signed:ghcr.io/ialexandermoon/labwc:latest
```

# Building
## Containerfile

This file defines the operations used to customize the selected image. It contains examples of possible modifications, including how to:
- change the upstream from which the custom image is derived
- add additional RPM packages
- add binaries as a layer from other images

## Workflows

### build.yml

This workflow creates your custom OCI image and publishes it to the Github Container Registry (GHCR). By default, the image name will match the Github repository name.

#### Container Signing

cosign.key has been copied to github action secrets and cosign.pub commit to this repository.

