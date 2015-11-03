# ~/.bash_aliases

# ls variants
alias la='ls -A'
alias ll='ls -l'


# Docker - Start default VM and set environment
alias docker-init='docker-machine restart default && eval $(docker-machine env default)'


# Python stuff
## virtualenv
fmkvirtualenv3() {
    mkvirtualenv --python=/usr/bin/python3 $1
}
alias mkvirtualenv3=fmkvirtualenv3

alias python='python3'
alias pip='pip3'
alias pypy='pypy3'


# Git shortcuts
alias gits='git status'
alias gitp='git push'


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


# Tunnel
alias socks-10022='ssh -fND 10022 n1o@christian-meter.de'
alias socks-10022-ceres='ssh -fND 10022 ceres'
alias socks-80='sudo ssh -fND 80 n1o@christian-meter.de'
alias socks-443='sudo ssh -fND 443 n1o@christian-meter.de'
alias socks-22='sudo ssh -fND 22 n1o@christian-meter.de'
