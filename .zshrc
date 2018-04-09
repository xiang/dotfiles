source ~/.zplug/init.zsh
zplug "denysdovhan/spaceship-prompt", as:theme
zplug "plugins/git", from:oh-my-zsh
zplug "robbyrussell/oh-my-zsh", use:"lib/*.zsh"
zplug "zsh-users/zsh-syntax-highlighting"

if ! zplug check --verbose; then
  printf "install? [y/n]: "
  if read -q; then
    echo; zplug install
  fi
fi

set -o vi
bindkey '^R' history-incremental-search-backward
alias config='/usr/bin/git --git-dir=/home/xiang/.cfg/ --work-tree=/home/xiang'

zplug load 
