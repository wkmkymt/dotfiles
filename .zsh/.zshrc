# ==================================================
#    .zshrc
# ==================================================

# -----------------------
#    Load Config Files
# -----------------------

# Environment
if [ -f ~/dotfiles/.zsh/conf/environment.sh ]; then
  source ~/dotfiles/.zsh/conf/environment.sh
fi

# Dir Colors
if [ -f ~/dotfiles/.zsh/conf/dir_colors.sh ]; then
  [ -z $LS_COLORS ] && eval `dircolors -b ~/dotfiles/.zsh/conf/dir_colors.sh`
fi

# Prompt
if [ -f ~/dotfiles/.zsh/conf/prompt.sh ]; then
  source ~/dotfiles/.zsh/conf/prompt.sh
fi

# History
if [ -f ~/dotfiles/.zsh/conf/history.sh ]; then
  source ~/dotfiles/.zsh/conf/history.sh
fi

# Completion
if [ -f ~/dotfiles/.zsh/conf/completion.sh ]; then
  source ~/dotfiles/.zsh/conf/completion.sh
fi

# Alias
if [ -f ~/dotfiles/.zsh/conf/alias.sh ]; then
  source ~/dotfiles/.zsh/conf/alias.sh
fi