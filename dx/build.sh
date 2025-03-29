#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# Install packages from docker-ce.repo (configured in /etc/yum.repos.d)
#rpm-ostree install containerd.io
#rpm-ostree install docker-ce
#rpm-ostree install docker-ce-cli
#rpm-ostree install docker-compose-plugin

rpm-ostree install toolbox

# Install packages from fedora repos:
## Virtualization:
#rpm-ostree install @virtualization

## QuickEmu is not in the default fedora repository
## https://copr.fedorainfracloud.org/coprs/aquacash5/quickemu/repo/fedora-41/aquacash5-quickemu-fedora-41.repo
## to /etc/yum.repos.d
## rpm-ostree install quickemu


# I might prefer using flatpak but getting docker container and toolbox development to work was easier integrated into the system image.
# Also, that's the way UBlue does it as it for their developer experience
rpm-ostree install code


# this would install a package from rpmfusion
# rpm-ostree install vlc

#### Example for enabling a System Unit File

#systemctl enable docker.socket
#systemctl enable libvirtd
# systemctl enable containerd.service
#systemctl enable podman.socket
