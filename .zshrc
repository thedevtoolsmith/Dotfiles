# Enable persistent history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY
setopt autocd

# Python plugin settings
PYTHON_VENV_NAME=".venv"
PYTHON_VENV_NAMES=($PYTHON_VENV_NAME venv)
PYTHON_AUTO_VRUN=true

# Pip specific settings
export PIP_REQUIRE_VENV=1
export PIP_VERBOSE=3
export PIP_DEFAULT_TIMEOUT=30


. "$HOME/.local/bin/env"

eval "$(starship init zsh)"
export PATH="/opt/homebrew/opt/postgresql@18/bin:$PATH"

# source antidote
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-$HOME}/.zsh_plugins.txt
antidote load