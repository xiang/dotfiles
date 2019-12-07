# zplug 
source ~/.zplug/init.zsh
zplug "robbyrussell/oh-my-zsh", use:"lib/*.zsh"
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/knife", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "romkatv/powerlevel10k", as:theme, depth:1 

if ! zplug check --verbose; then
  printf "install? [y/n]: "
  if read -q; then
    echo; zplug install
  fi
fi
zplug load 

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# shell settings and aliases
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias tf='terraform'
alias l='colorls --group-directories-first --almost-all'
alias ll='colorls --group-directories-first --almost-all --long' # detailed list view
set -o vi
source ~/.m2x-env
export EDITOR=vi
bindkey '^R' history-incremental-search-backward

# PATH
export PATH="~/work/att/att-iot-ops-cli/bin:/usr/local/opt/findutils/libexec/gnubin:$PATH"
export PATH=/usr/local/aws/bin:$PATH
if [ -f '/Users/sfortner/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sfortner/google-cloud-sdk/path.zsh.inc'; fi

# tools
source $HOME/.asdf/asdf.sh

# autocompletions
source /usr/local/aws/bin/aws_zsh_completer.sh
source /usr/local/etc/bash_completion.d/az
source $HOME/.asdf/completions/asdf.bash
source <(kubectl completion zsh)
if [ -f '/Users/sfortner/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sfortner/google-cloud-sdk/completion.zsh.inc'; fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
