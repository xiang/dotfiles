source ~/.zplug/init.zsh
zplug "robbyrussell/oh-my-zsh", use:"lib/*.zsh"
zplug "plugins/git", from:oh-my-zsh
zplug "denysdovhan/spaceship-prompt", as:theme
zplug "zsh-users/zsh-syntax-highlighting"

if ! zplug check --verbose; then
  printf "install? [y/n]: "
  if read -q; then
    echo; zplug install
  fi
fi
zplug load 

bindkey '^R' history-incremental-search-backward
alias config='/usr/bin/git --git-dir=/home/xiang/.cfg/ --work-tree=/home/xiang'

spaceship_vi_mode_enable
SPACESHIP_PROMPT_ORDER=(
  vi_mode  # these sections will be
  user     # before prompt char
  host     #
  char
  git
  ruby
  golang
  docker
)
