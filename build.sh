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

#### Additional Software from Flathub
flatpak install flathub md.obsidian.Obsidian
flatpak install flathub com.vscodium.codium

#### Enable additional services
systemctl enable podman.socket
