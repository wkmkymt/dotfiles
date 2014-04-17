#### @ .bash_profile

# Load path local bin directory
if [ -d ~/bin ]; then
    PATH=$PATH:$HOME/bin
fi

# Set environment
LANG=en_US.UTF-8
EDITOR="emacsclient -c"

export PATH LANG EDITOR


# Load common bash setting
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi