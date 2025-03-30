#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

### Install packages

## Let also add these cosmic tools while we are at it to try them out.
dnf5 -y install cosmic-term
dnf5 -y install cosmic-player
dnf5 -y install cosmic-store
dnf5 -y install cosmic-files
dnf5 -y install cosmic-launcher
dnf5 -y install cosmic-edit
