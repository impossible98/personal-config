#!/usr/bin/env bash

function install_git() {
  pacman --sync --noconfirm git
}

function main() {
  install_git
}

main
