# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1500
SAVEHIST=2000
setopt appendhistory extendedglob nomatch
unsetopt autocd beep notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ville/.zshrc'

autoload -U compinit
compinit
# End of lines added by compinstall


autoload -U colors

# Load aliases
source $HOME/.aliases

#Colors to ls if possible 
if [ -x /usr/bin/dircolors ]; then                              
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" ||     eval "$(dircolors -b)"
  alias l='ls -p --color=auto'
  alias la='ls -lap --color=auto'
  alias ll='ls -lp --color=auto'
  #alias dir='dir --color=auto'
  #alias vdir='vdir --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi
