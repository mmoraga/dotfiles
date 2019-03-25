# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[m\] \[\e[1;32m\]\$ \[\e[m\]\[\e[1;37m\] '

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

export EDITOR="vim"
export TERMINAL="st"
export PATH=$PATH:/usr/local/bin/
export JAVA_HOME="/usr/lib/jvm/default"
export PAGER="less"
GPG_TTY=$(tty)
export GPG_TTY
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

#PS1='┌─[\e[0;32m\t\e[0m]─[\e[0;36m\u\e[0m\e[0m \e[0;33m\w\e[0m]\n└─>\$ '
PS1='[\u@\h \W]\$ '
