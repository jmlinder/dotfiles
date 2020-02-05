alias ll='lsd -Fal'
alias ls='lsd -F'
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias del="rmtrash"
alias ddel="rmdirtrash"
alias ce="virtualenv .venv"
alias ae="source .venv/bin/activate"
alias tree='tree -I "*.pyc|node_modules|__pycache__"'
alias flushdns='sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder && say "flushed DNS"'
alias history='fc -il 1'
alias locate='glocate'
alias updatedb="export LC_ALL='C' && sudo gupdatedb"
alias unstage="git rm --cached -r"

# things i just hate typing
alias dc='docker-compose'
alias dice='rolldice -s'


# alias edocker='eval "$(docker-machine env default)"'
# alias epyenv='eval "$(pyenv init -)"'
# alias enodenv='eval "$(nodenv init -)"'

# Kubernetes commands
alias k='kubectl'
alias kc='kubectl config use-context'
alias kcc='kubectl config current-context'
alias kg='kubectl get'
alias kgp='kubectl get pods'
alias kl='kubectl logs'
alias klist="kubectl config view -o jsonpath='{.contexts[*].name}'"


alias tree='tree -I "*.pyc|node_modules|__pycache__"'
