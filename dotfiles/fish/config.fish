set fish_greetings
set PATH ~/.cargo/bin $PATH
set PATH ~/.local/bin $PATH
set PATH /home/linuxbrew/.linuxbrew/bin $PATH

starship init fish | source

# Gentoo
alias reposync="sudo emerge --sync ; sudo layman -S"
alias add="sudo layman -a"
alias del="sudo layman -d"
alias install="sudo emerge -av"
alias uninstall="sudo emerge -avC"
alias clean="sudo emerge --ask --depclean"
alias upgrade="sudo emerge -avuDN @world"
alias belongs="equery belongs -e"
alias depends="equery depends"
alias compile_time="sudo genlop -t"
alias packages="eix-installed -a ; eix-installed -a | count"
alias written_in="eix --depend -c"
alias readme="glow"

# EXA #
alias ls="exa -la --icons"
alias l="exa -ll --icons"
alias lt="exa -T --icons"

# Media #
alias play="mpv --hwdec=vaapi"
alias mpv="mpv --hwdec=vaapi"

# Extras #
alias grep="rg"
alias rm="rm -v"
alias mv="mv -v"
alias mkdir="mkdir -vp"
alias mkfile="touch"
alias ..="cd .. ; l"
alias edit="vim"
alias cp="cp -v"
alias clone="git clone"
alias cat="dog"
alias search="fd"

# Git
alias gitt="git add . ; git commit -m"
alias git-pull-all="find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull"
