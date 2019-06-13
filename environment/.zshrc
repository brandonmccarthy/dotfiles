source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
# antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

# Tell Antigen that you're done.
antigen apply

# Bullettrain theme stuff
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
BULLETTRAIN_CUSTOM_MSG='x220'
BULLETTRAIN_CUSTOM_BG='green'
BULLETTRAIN_CUSTOM_FG='black'


# History options
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
unsetopt HIST_VERIFY

# Paths
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$(go env GOPATH)/bin # gobin
export PATH=$PATH:/var/lib/snapd/snap/bin # snapd
export TERM="xterm-256color"

if [[ -a  /usr/share/fzf/shell/key-bindings.zsh ]]; then
	source /usr/share/fzf/shell/key-bindings.zsh
fi
