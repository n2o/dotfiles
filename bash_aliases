# ~/.bash_aliases

source ~/.bash_aliases_docker

# ls variants
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -l'
alias l='ls -lh'
alias k='k -h'

# Git Shortcuts
alias gs='git stash'
alias gsp='git stash pop'
alias gr='git rebase'
alias lg='lazygit'

alias idea='intellij-idea-ultimate-edition'
alias mc='mcli'

# Shortcut for xdg-open
fxopen() {
    xdg-open $@ &
}
alias xo=fxopen

# Find in pdf files
fnfindinpdf() {
    find . -iname '*.pdf' -exec pdfgrep -i "$1" {} +
}
alias pdffind=fnfindinpdf

# Emacs
e() { emacs "$@" & }
alias ec='emacsclient -nc'

# Vim
alias vim='nvim'

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

alias ssh='TERM=xterm-256color ssh'                                                                                                                                                             

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

