#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

export PATH="/usr/local/bin:$PATH"

source ~/.aliases

eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval "$(nodenv init -)"

autoload -Uz promptinit
promptinit
prompt pure

eval "$(hub alias -s)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
