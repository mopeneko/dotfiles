# zplug

source ~/.zplug/init.zsh

zplug "zplug/zplug", hook-build:"zplug --self-manage"

zplug "~/.zsh", from:local

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load --verbose

# History

HISTFILE=${HOME}/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt histignorealldups histsavenodups
setopt sharehistory

# Hooks

eval "$(starship init zsh)"
eval "$(nodenv init -)"

# OS dependant .zshrc

[ -f $HOME/.zshrc_`uname` ] && . $HOME/.zshrc_`uname`
