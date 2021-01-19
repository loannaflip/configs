set fish_greetings



alias add="sudo layman -a"
alias del="sudo layman -d"
alias Install="sudo emerge -q --autounmask=y --autounmask-write"
alias install="sudo emerge -qv"
alias genup="sudo etc-update"
alias uninstall="sudo emerge -C"
alias clean="sudo emerge --depclean"
alias upgrade="sudo emerge -quDN @world"


# EXA #
alias ls="exa -la"
alias l="exa -ll"


# Extras #
alias grep="grep --color=auto"
alias rm="rm -iv"
alias mv="mv -iv"
alias mkdir="mkdir -v"
alias ..="cd .."
alias edit="vim"
alias cp="cp -iv"
alias gc="git clone"
