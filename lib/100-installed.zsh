# Set Vim as default editor
export EDITOR=/usr/bin/vim
# Set VSCode as default editor
# export EDITOR=code

# # Fixes for some brew/pip installs
# export CFLAGS=-Qunused-arguments
# export CPPFLAGS=-Qunused-arguments

export GIT_PAGER='less -m -X --quit-at-eof'

# zsh autosuggestions
# Mac
if [ $(uname -s) = "Darwin" ]; then
    source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# Linux
else
    source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    source /usr/share/zsh-history-substring-search/zsh-history-substring-search.zsh
fi

# https://github.com/zsh-users/zsh-syntax-highlighting/issues/411#issuecomment-317109904
zle -N history-substring-search-up; zle -N history-substring-search-down

