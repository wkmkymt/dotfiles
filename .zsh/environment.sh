# ==================================================
#    [.zsh] - Environment
# ==================================================

# Language
export LANG=ja_JP.UTF-8
export LANGUAGE=$LANG
export LC_ALL=$LANG

# pyenv Root Directory
export PYENV_ROOT=$HOME/.pyenv

# Path
export PATH=$HOME/bin:$PYENV_ROOT/bin:$PATH

# Initialize pyenv
eval "$(pyenv init -)"

# Permission
umask 022