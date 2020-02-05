typeset -U path

# $path is a magical variable from which $PATH is set

# MacOS
if [ $(uname -s) = "Darwin" ]; then
    path=(
        /usr/local/sbin
        /usr/local/bin
        /usr/local/opt/python/libexec/bin
        /usr/local/share/npm/bin
        ~/dotfiles/bin
        /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
        ~/.cargo/bin
        $path
    )
    export PYTHONPATH="/usr/local/bin/python3:$PYTHONPATH"
# Linux
else 
    path=(
        /usr/sbin
        /usr/bin
        /usr/local/go/bin
        /usr/share/npm/bin
        ~/dotfiles/bin
        ~/.cargo/bin
        $path
    )
fi

export PATH
export GOPATH=~/go
export WORKON_HOME="$HOME/.virtualenvs"

function node_repl_path {
    [ -d ./node_modules ] && export NODE_PATH="${PWD}/node_modules"
}

precmd_functions+=(node_repl_path)
