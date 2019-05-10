# ==================================================
#    [.zsh] - Prompt
# ==================================================

# Load Colors
autoload -U colors
colors

# Prompt Style
PROMPT="%(?.%{${fg[green]}%}.%{${fg[red]}%})%n${reset_color}@${fg[blue]}%m${reset_color}(%*%) %~
%# "

# Off Beep
setopt no_beep
setopt no_hist_beep
setopt no_list_beep

# Ignore Logout when pressing Ctrl+D
setopt IGNOREEOF

# Omit cd Command
setopt auto_cd

# Enable Pushd
setopt auto_pushd
setopt pushd_ignore_dups

# Emacs Keybind
bindkey -e

# Enable Delete Key
stty erase ^H
bindkey "^[[3~" delete-char