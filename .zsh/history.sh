# ==================================================
#    [.zsh] - History
# ==================================================

# History File Path
export HISTFILE=~/.zsh/etc/zsh_history

# Histry Size
export HISTSIZE=10000
export SAVEHIST=10000

# Share History Between Multiple Sessions
setopt share_history

# Append History When Multiple Sessions
setopt append_history

# Ignore All Duplicate
setopt hist_ignore_all_dups

# Ignore Space
setopt hist_ignore_space

# Remove Extra Blanks
setopt hist_reduce_blanks

# Add Timestamps
setopt extended_history