# Dotfiles

Dotfiles for my linux workstation(s).

### Programs

#### Desktop
i3-gaps, polybar, betterlockscreen

#### Applications
syncthing-gtk, keepassxc, google-chrome, firefox, termite, backintime, timeshift, nitrogen

#### Terminal Applications
tmux, vim, ranger

### Usage
`git clone --recurse-submodules -j8 https://github.com/brandonmccarthy/dotfiles.git ~/dotfiles`

Run `~/dotfiles/scripts/check_applications.sh` to ensure all required programs are in `$PATH` and executable.

Use `stow` to install configuration files for wanted applications like `stow ~/.dotfiles/tmux`

![Clean Desktop](screenshots/clean.png)
![Busy Desktop](screenshots/busy.png)

