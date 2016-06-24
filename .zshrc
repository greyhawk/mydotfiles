# Path to your oh-my-zsh installation.
export ZSH=/Users/wutongqing/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="awesomepanda"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git github brew vi-mode docker docker-compose mvn sbt scala vagrant tmux sublime mix rebar)


# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export HOMEBREW_GITHUB_API_TOKEN=2f06b2dd4a84c88e563ac6e7044dfcd90e550fab
export HOMEBREW_CASK_OPTS=--caskroom=/opt/homebrew-cask/Caskroom

autoload run-help
HELPDIR=/usr/local/share/zsh/help

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_74.jdk/Contents/Home/jre
export ANDROID_HOME=/usr/local/opt/android-sdk
export GROOVY_HOME=/usr/local/opt/groovy/libexec

export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

export PATH="/usr/local/sbin:$PATH"

export RANCHER_URL=http://114.112.81.34:8080/
export RANCHER_ACCESS_KEY=E9F2D4C3C507FF4C90E7
export RANCHER_SECRET_KEY=dDnaD4hU15borfHkjnKgJRqsBTsYvML51HJsNzEP

alias 176='ssh root@120.24.229.176'
alias xdy_ci='ssh root@101.251.245.234'
alias mesos3='ssh appuser@121.10.118.3 -p 36000'
alias xdy_p40='ssh appuser@121.10.118.40 -p 36000'
alias xdy_p41='ssh appuser@121.10.118.41 -p 36000'
alias xdy_p37='ssh appuser@121.10.118.37 -p 36000'
alias xdy_p56='ssh appuser@121.10.118.56 -p 36000'
alias mesos1='ssh appuser@121.10.118.60 -p 36000'
alias mesos2='ssh appuser@121.10.118.62 -p 36000'
alias mesos4='ssh appuser@121.10.118.24 -p 36000'
alias mesos5='ssh appuser@121.10.118.25 -p 36000'
alias swarm001='ssh root@114.112.81.34'
alias swarm002='ssh root@114.112.81.35'
alias swarm003='ssh root@114.112.81.36'
alias swarm004='ssh root@114.112.81.37'
alias axdy001='ssh root@38.121.61.106'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
