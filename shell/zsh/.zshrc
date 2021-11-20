
#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####

## Custom aliases and $PATH additions

#### FIG ENV VARIABLES ####
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####

# Start configuration added by Zim install {{{
#
# User configuration sourced by interactive shells
#

# -----------------
# Zsh configuration
# -----------------

#
# History
#

# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS

#
# Input/output
#

# Set editor default keymap to emacs (`-e`) or vi (`-v`)
bindkey -e

# Prompt for spelling correction of commands.
#setopt CORRECT

# Customize spelling correction prompt.
#SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}


# --------------------
# Module configuration
# --------------------

#
# completion
#

# Set a custom path for the completion dump file.
# If none is provided, the default ${ZDOTDIR:-${HOME}}/.zcompdump is used.
#zstyle ':zim:completion' dumpfile "${ZDOTDIR:-${HOME}}/.zcompdump-${ZSH_VERSION}"

#
# git
#

# Set a custom prefix for the generated aliases. The default prefix is 'G'.
#zstyle ':zim:git' aliases-prefix 'g'

#
# input
#

# Append `../` to your input for each `.` you type after an initial `..`
#zstyle ':zim:input' double-dot-expand yes

#
# termtitle
#

# Set a custom terminal title format using prompt expansion escape sequences.
# See http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Simple-Prompt-Escapes
# If none is provided, the default '%n@%m: %~' is used.
#zstyle ':zim:termtitle' format '%1~'

#
# zsh-autosuggestions
#

# Customize the style that the suggestions are shown with.
# See https://github.com/zsh-users/zsh-autosuggestions/blob/master/README.md#suggestion-highlight-style
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

#
# zsh-syntax-highlighting
#

# Set what highlighters will be used.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Customize the main highlighter styles.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md#how-to-tweak-it
#typeset -A ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[comment]='fg=10'

# ------------------
# Initialize modules
# ------------------

if [[ ${ZIM_HOME}/init.zsh -ot ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  # Update static initialization script if it's outdated, before sourcing it
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
source ${ZIM_HOME}/init.zsh

# ------------------------------
# Post-init module configuration
# ------------------------------

#
# zsh-history-substring-search
#

# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Bind up and down keys
zmodload -F zsh/terminfo +p:terminfo
if [[ -n ${terminfo[kcuu1]} && -n ${terminfo[kcud1]} ]]; then
  bindkey ${terminfo[kcuu1]} history-substring-search-up
  bindkey ${terminfo[kcud1]} history-substring-search-down
fi

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
# }}} End configuration added by Zim install

# autoload -U compinit
# compinit

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Poner la hora en la parte derecha
RPROMPT="%T"
#PROMPT="LeanMind: $ ""

function _reverse_search {
  fname=$(declare -f -F _reverse_search)
  [ -n "$fname" || source "$HOME/.zsh_functions/_reverse_search.sh" ]
  _reverse_search
}

zle -N _reverse_search
bindkey '^r' _reverse_search

function docker_connect {
  fname=$(declare -f -F docker_connect)
  [ -n "$fname" || source "$HOME/.zsh_functions/docker_connect.sh" ]
  docker_connect
}

function docker_logs {
  fname=$(declare -f -F docker_logs)
  [ -n "$fname"  ||  source "$HOME/.zsh_functions/docker_logs.sh" ]
  docker_logs
}

function docker_prune {
  fname=$(declare -f -F docker_prune)
  [ -n "$fname"  ||  source "$HOME/.zsh_functions/docker_prune.sh" ]
  docker_prune
}

function open_github {
    projectName=$(pwd | sed 's#.*/##')
    open https://github.com/holaluz/"$projectName"
}

function docker_none_container {
    docker rmi -f $(docker images -f "dangling=true" -q)
}

# autojump - a faster way to navigate your filesystem
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

alias gl="git pull"
alias gst="git status"
alias gco="git checkout"
alias cat="bat"
alias man="tldr"
alias find="fd"

# Problem with docker in mac
export DOCKER_CLIENT_TIMEOUT=120
export COMPOSE_HTTP_TIMEOUT=120

# Add ~/.local/ to PATH Python3
export PATH=$HOME/.local/bin:$PATH
