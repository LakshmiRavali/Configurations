#!/bin/bash
set -eu
. ./utils.sh

pushd ~
clone-gh tarjoilija zgen
clone-gh unixorn zsh-quickstart-kit
popd

pushd ~/zsh-quickstart-kit
stow --target="/Users/$USER" zsh
popd

cp .zshrc.d/* ~/.zshrc.d
