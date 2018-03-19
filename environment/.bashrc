#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lha --color=auto'
alias tmx2='tmux'
alias tlpmode='sudo tlp-stat | grep "+++ TLP Status" -A 4'

PS1='[\u@\h \W]\$ '
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/vim

export GOPATH=$(go env GOPATH)
export PATH=$PATH:$(go env GOPATH)/bin
export TERM="xterm-256color"
