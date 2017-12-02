#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export PATH=$HOME/cmus/bin:$PATH
export VISUAL="vim"
. /usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
export PATH=~/.npm-global/bin:$PATH

