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
* https://containers.dev/
* docker
* docker compose

### Devcontainers with VSCode
* .devcontainers with vscode

### DevPod
* .devcontainers.json with devpod (if you don't use vscode to manage the development container)
  * https://devpod.sh/
  * VS Code and the full JetBrains suite is supported.
  * $HOME/.devpod

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
* https://github.com/devcontainers/images/tree/main/src/rust


## C

## C#

## Virtual Machines
* quickemu
* https://developer.fedoraproject.org/tools/virtualization/installing-qemu-on-fedora-linux.html
* 
