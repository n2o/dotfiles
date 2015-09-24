# ~/.bash_aliases

# ls variants
alias la='ls -A'
alias ll='ls -l'

# 7zip
alias keka='/Applications/Keka.app/Contents/Resources/keka7z'
alias 7z='keka'

alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

alias skim='/Applications/Skim.app/Contents/MacOS/Skim'

# Python stuff
## virtualenv
fmkvirtualenv3() {
    mkvirtualenv --python=/usr/local/bin/python3 $1
}
alias mkvirtualenv3=fmkvirtualenv3

alias python='python3'
alias pip='pip3'
alias pypy='pypy3'

# Git shortcuts
alias gits='git status'
alias gitp='git push'

# Dev
alias vim='mvim -v'
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs "$@"'
alias chromium='/Applications/Chromium.app/Contents/MacOS/Chromium'
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

alias grep='ggrep'

# Tunnel
alias socks-10022='ssh -fND 10022 n1o@christian-meter.de'
alias socks-10022-ceres='ssh -fND 10022 ceres'
alias socks-80='sudo ssh -fND 80 n1o@christian-meter.de'
alias socks-443='sudo ssh -fND 443 n1o@christian-meter.de'
alias socks-22='sudo ssh -fND 22 n1o@christian-meter.de'

# Use Gnu Grep
alias grep="ggrep"
