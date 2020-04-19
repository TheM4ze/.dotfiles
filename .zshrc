

# Themes are into ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each time
ZSH_THEME="spaceship"

# Enable colors and change prompt:
autoload -U colors && colors	# Load colors

# Configuration for ZSH_THEME="spaceship"
SPACESHIP_PROMPT_ADD_NEWLINE="true"
SPACESHIP_CHAR_SYMBOL=" ↳ "

SPACESHIP_USER_SHOW="always"
SPACESHIP_USER_PREFIX="✘ Ǿ ✘ "
#SPACESHIP_USER_COLOR_ROOT="red"

SPACESHIP_HOST_SHOW="always"
SPACESHIP_HOST_SUFFIX=""
SPACESHIP_HOST_PREFIX=""

SPACESHIP_DIR_TRUNC="0"
SPACESHIP_TIME_SHOW="true"

SPACESHIP_GIT_SHOW="true"

SPACESHIP_DOTNET_SHOW="true"

SPACESHIP_EXEC_TIME_SHOW="true"
SPACESHIP_EXEC_TIME_PREFIX="took"

SPACESHIP_JOBS_SHOW="true"


# Path to your oh-my-zsh installation.
export ZSH="/home/babyjesus/.oh-my-zsh"


# Disable weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# User configuration
source $ZSH/oh-my-zsh.sh
source ~ / .bash_profile

# Load aliases and shortcuts if existent.
[ -f "$HOME/aliasrc" ] && source "$HOME/aliasrc"


# Plugin list in ~/.oh-my-zsh/plugins
plugins=(
    zsh-syntax-highlighting
    zsh-autosuggestions
    adb
    zsh_reload
    sudo
)


export PATH="/usr/lib/ccache/bin/:$PATH"
export PATH="${PATH}:${HOME}/.local/bin/"


#unset GREP_OPTIONS
#test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || \
#    eval "$(dircolors -b)"


#!/bin/sh
#feh --no-fehbg

#'/home/babyjesus/.bin/terminal/colors'

# Load zsh-syntax-highlighting; should be last.

source /home/babyjesus/.oh-my-zsh/plugins/sudo/sudo.plugin.zsh
source /home/babyjesus/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#StartShip
eval "$(starship init zsh)"
