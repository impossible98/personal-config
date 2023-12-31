#!/usr/bin/env bash

function install_git() {
  pacman --sync --noconfirm git
  echo ""
  git --version
  echo "git installed"
  set_git
  echo "git configured"
}

function set_git() {
  git config --global init.defaultBranch master
  git config --global credential.helper store
  git config --global user.email "christoleavenow@outlook.com"
  git config --global user.name "impossible98"
}

function install_ssh() {
  echo ""
  ssh -V
  echo "ssh installed"
  set_ssh
  echo "ssh configured"
}

function set_ssh() {
  ssh-keygen -t rsa
  echo ""
  cat ~/.ssh/id_rsa.pub
}

function install_asdf() {
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1
  {
    echo ""
    echo "# asdf"
    echo ". $HOME/.asdf/asdf.sh"
    cho ". $HOME/.asdf/completions/asdf.bash"
  } >> ~/.bashrc
  # shellcheck source=/dev/null
  source "$HOME/.bashrc"
  asdf --version
  echo "asdf installed"
}

function main() {
  install_git
  install_ssh
  install_asdf
}

main
