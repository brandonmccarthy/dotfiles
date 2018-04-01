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

BULLETTRAIN_PROMPT_ORDER=(
	time
	dir
	git
	go
	virtualenv
	status
)

# Paths
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$(go env GOPATH)/bin # gobin
export PATH=$PATH:/var/lib/snapd/snap/bin # snapd
export TERM="xterm-256color"

