# danirod's .zshrc file
# These settings power my terminal.

# Oh my ZSH configuration
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="steeef"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git nvm)
source $ZSH/oh-my-zsh.sh

# Home settings
export NVM_HOME=$HOME/.nvm
export ANDROID_HOME=$HOME/Library/Android/sdk

# Set up PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
if [ -d $HOME/.bin ]; then export PATH="$HOME/.bin:$PATH"; fi

export LANG=es_ES.UTF-8
export EDITOR=vim

# Some applications like to set up their autostart scripts.
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh
[ -f $NVM_HOME/nvm.sh ] && source $NVM_HOME/nvm.sh