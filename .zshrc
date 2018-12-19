source ~/.zplug/init.zsh
zplug "robbyrussell/oh-my-zsh", use:"lib/*.zsh"
zplug "plugins/git", from:oh-my-zsh
zplug "denysdovhan/spaceship-prompt", as:theme
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"

if ! zplug check --verbose; then
  printf "install? [y/n]: "
  if read -q; then
    echo; zplug install
  fi
fi
zplug load 

spaceship_vi_mode_enable
SPACESHIP_TIME_SHOW=true
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  ruby          # Ruby section
  golang        # Go section
  docker        # Docker section
  aws           # Amazon Web Services section
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  exit_code     # Exit code section
  char          # Prompt character
)

bindkey '^R' history-incremental-search-backward
alias config='/usr/bin/git --git-dir=/home/xiang/.cfg/ --work-tree=/home/xiang'
alias tf='terraform'

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi


