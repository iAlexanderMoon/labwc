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
* might install code into the image... as well as virtualization
```sh
flatpak install flathub com.visualstudio.code
```

## devcontainers
* docker
* docker compose

## toolbox containers
* similar to a devcontainer using OCI containers and podman
* https://docs.fedoraproject.org/en-US/fedora-silverblue/toolbox/
```
toolbox create
toolbox enter
toolbox rm 
```

## Go

## Rust

## C

## C#