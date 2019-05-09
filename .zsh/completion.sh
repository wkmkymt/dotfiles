# ==================================================
#    [.zsh] - Completion
# ==================================================

# Enable Completion
autoload -U compinit
compinit -d ~/.zsh/etc/zcompdump

# Enable Completion Caching
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/etc/zsh_cache

# Completion Menu
zstyle ':completion:*:default' menu select=2

# Color
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:original' list-colors "=*=$color[red];$color[bold]"
zstyle ':completion:*:parameters' list-colors "=[^a-zA-Z]*=$color[red]"
zstyle ':completion:*:aliases' list-colors "=*=$color[green]"

# Enhance Completion 
zstyle ':completion:*' verbose yes
zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list _history
zstyle ':completion:*:messages' format '%F{YELLOW}%d'$DEFAULT
zstyle ':completion:*:warnings' format '%F{RED}No matches for:''%F{YELLOW} %d'$DEFAULT
zstyle ':completion:*:descriptions' format '%F{YELLOW}completing %B%d%b'$DEFAULT
zstyle ':completion:*:options' description yes
zstyle ':completion:*:descriptions' format '%F{yellow}Completing %B%d%b%f'$DEFAULT
zstyle ':completion:*' group-name ''

# Show Separator
zstyle ':completion:*' list-separator '-->'
zstyle ':completion:*:manuals' separate-sections true

# Case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Enable Command Line Variable
setopt magic_equal_subst

# Fix Missed Command
setopt correct