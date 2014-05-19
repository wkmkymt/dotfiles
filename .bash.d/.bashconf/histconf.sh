#### @ histry config

HISTSIZE=50000
HISTFILESIZE=50000
HISTCONTROL=ignoreboth
HISTTIMEFORMAT="%F %T  ->  "

export HISTSIZE HISTFILESIZE HISTCONTROL

if [ -f ~/.bashconf/etc/bash_history ]; then
    export HISTFILE=~/.bashconf/etc/bash_history
fi
