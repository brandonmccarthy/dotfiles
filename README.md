# Dotfiles

Dotfiles for my linux workstation(s).

### Programs

* i3-gaps
* polybar
* betterlockscreen
* rofi
* dunst
* termite
* ranger
* redshift
* tmux
* vim
* nitrogen

### Usage
* `git clone --recurse-submodules -j8 https://github.com/brandonmccarthy/dotfiles.git ~/dotfiles`
* Run `~/dotfiles/scripts/check_applications.sh` to ensure all required programs are in `$PATH` and executable.
* Use `stow` to install configuration files for wanted applications like `stow ~/dotfiles/tmux`

![Clean Desktop](screenshots/clean.png)
![Busy Desktop](screenshots/busy.png)
