#!/bin/sh -ex

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

if [ "$(uname)" = "Darwin" ]; then
  xcode-select --install
fi
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

if [ -f $HOME/.zshrc_`uname` ]; then
  . $HOME/.zshrc_`uname`.sh
fi
