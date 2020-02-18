source ~/antigen.zsh

##################################
# General
##################################
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Inlcude hidden files

# History options
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
unsetopt HIST_VERIFY

##################################
# Plugins
##################################
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle z
antigen bundle command-not-found

# Syntax highlighting bundle.
# antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

# Tell Antigen that you're done.
antigen apply

##################################
# Theme
##################################
BULLETTRAIN_PROMPT_ORDER=(
    time
    custom
    dir
    screen
    perl
    ruby
    virtualenv
    nvm
    aws
    go
    rust
    elixir
    git
    hg
    status
    cmd_exec_time
)
# BULLETTRAIN_TIME_12HR=true
BULLETTRAIN_CUSTOM_MSG='thinkpad'
BULLETTRAIN_CUSTOM_BG='white'
BULLETTRAIN_CUSTOM_FG='blue'

##################################
# Vim Mode
##################################
# Use ivm controls
bindkey -v 

# get rid of esc input lag
export KEYTIMEOUT=1

# Fix history controls
bindkey '^p' up-history
bindkey '^n' down-history

# backspace and ^h working even after
# returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# ctrl-w remove word backwards
bindkey '^w' backward-kill-word

# ctrl-u remove before cursor
bindkey '^u' backward-kill-line

# Search history
bindkey '^r' history-incremental-search-backward

# Edit line in vim with ctrl-e
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# FZF history matching
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Paths
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$(go env GOPATH)/bin # gobin
export PATH=$PATH:/var/lib/snapd/snap/bin # snapd
export TERM="xterm-256color"

if [[ -a  /usr/share/fzf/shell/key-bindings.zsh ]]; then
	source /usr/share/fzf/shell/key-bindings.zsh
fi
