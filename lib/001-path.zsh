typeset -U path

# $path is a magical variable from which $PATH is set
path=(
    $path
    /usr/local/sbin
    /usr/local/opt/python/libexec/bin
    /usr/local/share/npm/bin
    ~/dotfiles/bin
    /Applications/Visual Studio Code.app/Contents/Resources/app/bin
    ~/.cargo/bin

)
export PATH
export GOPATH=~/go
export PYTHONPATH="/usr/local/bin/python3:$PYTHONPATH"
export WORKON_HOME="$HOME/.virtualenvs"
export GROOVY_HOME="/usr/local/opt/groovy/libexec"


function node_repl_path {
    [ -d ./node_modules ] && export NODE_PATH="${PWD}/node_modules"
}

precmd_functions+=(node_repl_path)
