#Define path for this user
PATH="${PATH}:~/bin:~/Koodia/Scripts"
EDITOR="vim"
TERM=rxvt

if [ -f $HOME/.aliases ]; then
  source $HOME/.aliases
fi

###########################################


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

#Launch keychain
eval $(keychain --eval --agents ssh -Q --quiet id_rsa)

if [ -f $HOME/.bashrc_local ]; then
  source $HOME/.bashrc_local
fi
