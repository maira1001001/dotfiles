# Plugins
PLUGINS_DIR="$HOME/dotfiles/plugins/"
source "${PLUGINS_DIR}baila/zshrc.zsh"

# compsys initialization
autoload -U compinit
compinit


export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export EDITOR='vim'
export VISUAL='vim'
