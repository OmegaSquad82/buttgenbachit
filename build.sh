#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages
rpm-ostree install \
  byobu \
  cowsay \
  htop \
  kitty \
  neovim

### Enable additional services
systemctl enable podman.socket
systemctl enable sshd.service
systemctl disable tailscaled.service
