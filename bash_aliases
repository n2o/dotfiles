# ~/.bash_aliases

source ~/.bash_aliases_docker

# ls variants
alias la='ls -A'
alias ll='ls -l'
alias l='ls -lh'

alias j='jump'

# Shortcut for xdg-open
fxopen() {
    xdg-open $1
}
alias xo=fxopen

# Go to
alias goto-dbas='cd /home/n2o/Cloud/Promotion/src/dbas'
alias goto-discuss='cd /home/n2o/Cloud/Promotion/src/discuss'

# Emacs
alias es='emacs'
alias ec='emacsclient -nc'

# Docker
docker-ip() {
    docker inspect --format '{{ .NetworkSettings.IPAddress }}' "$@"
}

# Python stuff
## virtualenv
fmkvirtualenv3() {
    mkvirtualenv --python=/usr/bin/python3 $1
}
alias mkvirtualenv3=fmkvirtualenv3
fmkvirtualenv2() {
    mkvirtualenv --python=/usr/bin/python2 $1
}
alias mkvirtualenv2=fmkvirtualenv2

alias python='python3'
alias pip='pip3'
alias pypy='pypy3'
alias pip-upgrade='pip freeze | grep -v "^\-e" | cut -d = -f 1  | sudo xargs -n1 pip install -U'

# Git shortcuts
alias gits='git status'
alias gitp='git push'
alias gcasm='git commit -a -S -m'
alias gcam='git commit -a -m'
alias gcsm='git commit -S -m'


# Detach GUI applications from command line
## emacs
fnemacs() {
    emacs $1 &
}
alias emacs=fnemacs

## okular
fnokular() {
    okular $1 &
}
alias okular=fnokular

## nautilus
fnnautilus() {
    nautilus &
}
alias nautilus=fnnautilus

# Restart KDE5
alias plasma-restart='kbuildsycoca5 && kquitapp5 plasmashell && kstart5 plasmashell'


# Tunnel
alias socks-10022='ssh -fND 10022 n1o@christian-meter.de'
alias socks-10022-ceres='ssh -fND 10022 ceres'
alias socks-80='sudo ssh -fND 80 n1o@christian-meter.de'
alias socks-443='sudo ssh -fND 443 n1o@christian-meter.de'
alias socks-22='sudo ssh -fND 22 n1o@christian-meter.de'

