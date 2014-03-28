#### @ histry config

HISTSIZE=50000
HISTFILESIZE=50000
#HISTCONTROL=ignoreboth
export HISTSIZE HISTFILESIZE HISTCONTROL

if [ -f ~/.histories ]; then
    export HISTFILE=~/.bashconf/etc/histories
fi