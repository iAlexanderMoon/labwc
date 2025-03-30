#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

### Install packages

# this installs a package from fedora repos
dnf5 -y install labwc
dnf5 -y wlopm
dnf5 -y chayang


