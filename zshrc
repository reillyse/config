# Path to your oh-my-zsh configuration.
ZSH=$HOME/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="candy"
ZSH_THEME="karl"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
platform=`uname`
if [[ $platform == 'Darwin' ]]; then
  export PATH=$HOME/bin:$PATH
  alias showhiddenfiles='defaults write com.apple.finder AppleShowAllFiles TRUE'
  alias hidehiddenfiles='defaults write com.apple.finder AppleShowAllFiles FALSE'
else
  export PATH=$HOME/bin:$PATH
fi
unsetopt beep
# bindkey -v
# autoload -U promptinit && promptinit

# aliases
alias todo="vim ~/Dropbox/PlainText/Karl/Todo.txt"
alias -s txt=vim
alias -s php=vim

# colors
if [[ $TERM != 'linux' && $TERM != 'dumb' ]]; then
  if [[ -e /usr/share/terminfo/x/xterm-256color || -e /usr/share/terminfo/78/xterm-256color ]]; then
    export TERM='xterm-256color'
  else
    export TERM='xterm-color'
  fi
fi

# Keychain
if [[ -x /usr/bin/keychain && -e ~/.ssh/id_dsa ]]; then
    /usr/bin/keychain -q ~/.ssh/id_dsa
    /usr/bin/keychain -q ~/.ssh/id_rsa
    source ~/.keychain/`uname -n`-sh >/dev/null
fi

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
