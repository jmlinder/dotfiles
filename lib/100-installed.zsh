export EDITOR=code

# # Fixes for some brew/pip installs
# export CFLAGS=-Qunused-arguments
# export CPPFLAGS=-Qunused-arguments

export GIT_PAGER='less -m -X --quit-at-eof'

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# https://github.com/zsh-users/zsh-syntax-highlighting/issues/411#issuecomment-317109904
zle -N history-substring-search-up; zle -N history-substring-search-down

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# must come after zsh-syntax-highlighting
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

fuck() {
    eval $(thefuck --alias)
    fuck
}
