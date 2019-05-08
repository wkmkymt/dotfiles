# ==================================================
#    .zshrc
# ==================================================

# -----------------------
#    Load Config Files
# -----------------------

# Environment
if [ -f ~/.zsh/environment.sh]; then
  source ~/.zsh/environment.sh
fi

# Dir Colors
if [ -f ~/.zsh/environment.sh]; then
  eval 'dircolors -b ~/.zsh/dir_colors.sh'
fi

# Prompt
if [ -f ~/.zsh/prompt.sh]; then
  source ~/.zsh/prompt.sh
fi

# History
if [ -f ~/.zsh/hisotry.sh]; then
  source ~/.zsh/history.sh
fi

# Completion
if [ -f ~/.zsh/completion.sh]; then
  source ~/.zsh/completion.sh
fi

# Alias
if [ -f ~/.zsh/completion.sh]; then
  source ~/.zsh/completion.sh
fi