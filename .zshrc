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

# shell settings and aliases
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
set -o vi
export EDITOR=vi
bindkey '^R' history-incremental-search-backward

if [[ "$OSTYPE" == "darwin"* ]]; then
  alias tf='terraform'
  source ~/.m2x-env

  # tools
  source $HOME/.asdf/asdf.sh

  # PATH
  export PATH="~/work/att/att-iot-ops-cli/bin:/usr/local/opt/findutils/libexec/gnubin:$PATH"
  export PATH=/usr/local/aws/bin:$PATH
  source $HOME/google-cloud-sdk/path.zsh.inc

  # autocompletions
  source /usr/local/aws/bin/aws_zsh_completer.sh
  source /usr/local/etc/bash_completion.d/az
  source $HOME/.asdf/completions/asdf.bash
  source <(kubectl completion zsh)
  source $HOME/google-cloud-sdk/completion.zsh.inc
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
