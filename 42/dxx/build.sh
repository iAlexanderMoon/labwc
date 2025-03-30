#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

### Install packages

## Let also add these cosmic tools while we are at it to try them out.
dnf5 -y cosmic-term
dnf5 -y cosmic-player
dnf5 -y cosmic-store
dnf5 -y cosmic-files
dnf5 -y cosmic-launcher
dnf5 -y cosmic-edit
