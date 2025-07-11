#!/bin/bash
iatest=$(expr index "$-" i)

# disable bell
if [[ $iatest > 0 ]]; then bind "set bell-style visible"; fi

# expand history size
export HISTFILESIZE=10000
export HISTSIZE=500

# dont put duplicate lines in history and dont add lines that start with a space
export HISTCONTROL=erasedups:ignoredups:ignorespace

# check wnd size after each command, update values of LINES and COLUMNS if necessary
shopt -s checkwinsize

# append to history rather than overwriting
shopt -s histappend
PROMPT_COMMAND='history -a'

# allow ctrl-S for history navigation (with ctrl-R)
stty -ixon

# ignore case on auto completion
# Note: bind used instead of sticking these in .inputrc
if [[ $iatest > 0 ]]; then bind "set completion-ignore-case on"; fi

# Show auto-completion list automatically, without double tab
if [[ $iatest > 0 ]]; then bind "set show-all-if-ambiguous On"; fi

# default editor
export EDITOR=vim
export VISUAL=vim
alias pico='edit'
alias spico='sedit'
alias nano='edit'
alias snano='sedit'

# To have colors for ls and all grep commands such as grep, egrep and zgrep
export CLICOLOR=1
export LS_COLORS='no=00:fi=00:di=00;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:*.xml=00;31:'
alias grep="/usr/bin/grep $GREP_OPTIONS"
unset GREP_OPTIONS

# Color for manpages in less makes manpages a little easier to read
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# path
PATH=$PATH:~/installed/zig/
PATH=$PATH:~/installed/python/
PATH=$PATH:~/installed/cmake/bin/
PATH=$PATH:~/installed/nvim/bin/

# env
# export NVIM_APPNAME="../../.config/nvim"

# general
alias q='exit'
alias c='clear'
alias h='history'

# git
alias gd="git diff --output-indicator-new=' ' --output-indicator-old=' '"
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gu='git pull'
alias gl='git log'
alias gb='git branch'
alias gi='git init'
alias gcl='git clone'
alias gs='git status --short'
gacp() {
    ga . && gc -m "$1" && gp origin main
}
