#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# docker from docker repos: not enabled for fedora 42 yet
# https://docs.docker.com/engine/install/fedora/
# Install packages from docker-ce.repo (configured in /etc/yum.repos.d)
#dnf5 -y install containerd.io
#dnf5 -y install docker-ce
#dnf5 -y install docker-ce-cli
#dnf5 -y install docker-compose-plugin

# docker from fedora repos
# https://docs.fedoraproject.org/en-US/quick-docs/installing-docker/
dnf5 -y install docker-cli containerd docker-compose moby-engine

dnf5 -y install toolbox


# Install packages from fedora repos:
## Virtualization:
#rpm-ostree install @virtualization

## QuickEmu is not in the default fedora repository
## https://copr.fedorainfracloud.org/coprs/aquacash5/quickemu/repo/fedora-41/aquacash5-quickemu-fedora-41.repo
## to /etc/yum.repos.d
## rpm-ostree install quickemu 


# I might prefer using flatpak but getting docker container and toolbox development to work was easier integrated into the system image.
# Also, that's the way UBlue does it as it for their developer experience
dnf5 -y install code

## Let also add these cosmic tools while we are at it to try them out.
dnf5 -y cosmic-term
dnf5 -y cosmic-player
dnf5 -y cosmic-store
dnf5 -y cosmic-files
dnf5 -y cosmic-launcher
dnf5 -y cosmic-edit

#### Example for enabling a System Unit File

#systemctl enable docker.socket
#systemctl enable libvirtd
# systemctl enable containerd.service
#systemctl enable podman.socket
