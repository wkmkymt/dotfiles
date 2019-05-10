# ==================================================
#    .zshrc
# ==================================================

# -----------------------
#    Load Config Files
# -----------------------

# Environment
if [ -f ~/.zsh/environment.sh ]; then
  source ~/.zsh/environment.sh
fi

# Dir Colors
if [ -f ~/.zsh/dir_colors.sh ]; then
  [ -z $LS_COLORS ] && eval `dircolors -b ~/.zsh/dir_colors.sh`
fi

# Prompt
if [ -f ~/.zsh/prompt.sh ]; then
  source ~/.zsh/prompt.sh
fi

# History
if [ -f ~/.zsh/history.sh ]; then
  source ~/.zsh/history.sh
fi

# Completion
if [ -f ~/.zsh/completion.sh ]; then
  source ~/.zsh/completion.sh
fi

# Alias
if [ -f ~/.zsh/alias.sh ]; then
  source ~/.zsh/alias.sh
fi