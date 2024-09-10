#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages
rpm-ostree install \
  byobu \
  cowsay \
  goverlay \
  htop \
  kitty \
  mangohud \
  neovim \
  powertop

### Enable additional services
systemctl enable podman.socket
systemctl enable sshd.service
systemctl disable tailscaled.service
