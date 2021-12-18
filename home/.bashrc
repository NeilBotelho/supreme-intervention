HISTSIZE=-1
HISTFILESIZE=-1
#Set Custom prompt
PS1="\[\033[01;32m\]\u@\h\[\033[00m\]: \[\033[01;34m\]\w \[\033[33m\] \$(git symbolic-ref --short HEAD 2>/dev/null)\[\033[00m\]\n\$ "
xset -b

xhost +local:root > /dev/null 2>&1
alias games="sudo mount /dev/nvme1n1p3 ~/.local/share/Games/"
# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize
shopt -s expand_aliases
shopt -s histappend
stty -ixon #Disable ctr;-s ctrl-q
shopt -s autocd #Allows you to cd just be typing the directory name

source $XDG_CONFIG_HOME/bash/aliases
source $XDG_CONFIG_HOME/bash/functions
complete -f -X '!*.@(pdf)' pdf
source "/home/neil/.local/share/cargo/env"
# [ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh


export MYVIMRC="/home/neil/.config/nvim/init.vim"
export REVIEW_BASE="master"
alias luamake=/home/neil/.local/share/projects/lua-language-server/3rd/luamake/luamake
