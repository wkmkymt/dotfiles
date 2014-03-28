#### @ .bash_profile

# Load path local bin directory
if [ -d ~/bin ]; then
    PATH=$PATH:$HOME/bin
fi

# Set environment
LANG=en_US.UTF-8

export PATH LANG


# Load common bash setting
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi