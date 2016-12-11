# oh-my-zsh settings
DISABLE_AUTO_UPDATE=true

# zgen
source ~/.zgen.repo/zgen.zsh

# aliases
source ".alias"

# zgen plug
if ! zgen saved; then
    zgen oh-my-zsh
    zgen oh-my-zsh plugins/git
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load caiogondim/bullet-train-oh-my-zsh-theme bullet-train
    zgen save
fi

# theme
ZSH_THEME="bullet-train"

# open
alias open='xdg-open'

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# okay to go
true

# OPAM configuration
. /home/hoonga/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
