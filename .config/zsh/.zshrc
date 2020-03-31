# Lines configured by zsh-newuser-install
HISTFILE=~/dotfiles/.config/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sam3ay/dotfiles/.config/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
