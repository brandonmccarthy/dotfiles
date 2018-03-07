#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lha --color=auto'
PS1='[\u@\h \W]\$ '
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/vim

alias tlpmode='sudo tlp-stat | grep "+++ TLP Status" -A 4'

export GOPATH=$(go env GOPATH)
export PATH=$PATH:$(go env GOPATH)/bin
