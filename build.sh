#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages
rpm-ostree install \
  byobu \
  cowsay \
  htop \
  kitty \
  neovim \
  vlc

### Enable additional services
systemctl enable podman.socket
