#---------------------------------------
# file: ~/.bashrc
# author: manuel moraga - mmoraga@kth.se
#---------------------------------------


# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[m\] \[\e[1;32m\]\$ \[\e[m\]\[\e[1;37m\] '

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

export EDITOR="vim"
export PATH=$PATH:/usr/local/bin/
export PAGER="less"

#PS1='┌─[\e[0;32m\t\e[0m]─[\e[0;36m\u\e[0m\e[0m \e[0;33m\w\e[0m]\n└─>\$ '
