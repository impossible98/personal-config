#!/usr/bin/env bash

function install_git() {
  pacman --sync --noconfirm git
  echo ""
  git --version
  echo "Git installed"
  set_git
  echo "Git configured"
}

function set_git() {
  git config --global init.defaultBranch master
  git config --global credential.helper store
  git config --global user.email "christoleavenow@outlook.com"
  git config --global user.name "impossible98"
}

function main() {
  install_git
}

main
