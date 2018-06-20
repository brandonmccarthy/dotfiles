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

export PATH=$PATH:/usr/local/go/bin # add go binary
export GOPATH=$(go env GOPATH) # gopath
export PATH=$PATH:$(go env GOPATH)/bin # gobin
export PATH=$PATH:/var/lib/snapd/snap/bin # snapd
export TERM="xterm-256color"

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<~/.ssh-agent-thing)"
fi
