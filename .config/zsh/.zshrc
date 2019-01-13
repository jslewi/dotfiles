# History

HISTFILE=~/.cache/zsh/histfile 
HISTSIZE=1000
SAVEHIST=1000

# Window title                  

setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -v  # set vim bindings


zstyle :compinstall filename '/home/john/.zshrc'

# Completion                  

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-beginning-search
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-beginning-search

COMPDUMPFILE=~/.cache/zsh/zcompdump

# dircolors                  

eval "$(dircolors ~/.config/ls/dir_colors) &> /dev/null"

# prompt                  

echo "Prompt init ..."
autoload -Uz promptinit
promptinit
prompt elite2 yellow

# Aliases 

alias ls='ls --color=always -F --group-directories-first'
alias la='ls --color=always -F --group-directories-first -aH1'
alias ll='ls --color=always -F --group-directories-first -lAH1'
alias xup='xrdb ~/.Xresources'
