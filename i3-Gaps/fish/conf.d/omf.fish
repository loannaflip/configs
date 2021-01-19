# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

## Aliases ##

# System -> arch linux
alias pacman="sudo pacman"
alias install="yay -S"
alias uninstall="pacman -Rns"
alias search="yay -Ss"
alias update="sudo pacman -Syu"
alias upgrade="yay -Syu"

# ls to exa
alias ls="lsd"
alias la="lsd -la"
alias ll="lsd -ll"

# Swallow
alias play="swallow mpv"
alias view="swallow feh"

# Extras
alias free="free -m"
alias grep="grep --color=auto"        

# Confirmation  
alias mv="mv -iv"
alias rm="rm -iv"
