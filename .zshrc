stty -ixon

# Path to your oh-my-zsh installation.
export ZSH=/Users/gmuresan/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=14

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(git vi-mode)

# User configuration

export NODE_PATH='/usr/local/lib/node_modules'
# export MANPATH="/usr/local/man:$MANPATH"
#export WORKON_HOME=~/.Envs

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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

# alias vim='/usr/local/Cellar/vim/7.4.1589/bin/vim'
alias k9='kill -9 %'

alias less='less -R'
alias ag='/usr/local/bin/ag --pager=less'

alias gitpsu='git push --set-upstream origin $(current_branch)'
alias br='bin/rails'
alias mp='cd ~/makersplace/digital-collectibles/collectibles && workon mp3.8-3'
alias mpj='cd ~/makersplace/digital-collectibles/collectibles/frontend/js && workon mp3.8-3'
alias mph='cd ~/makersplace/digital-collectibles/ && workon mp3.8-3 && honcho start -f Procfile.local'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias b="git branch"
alias ba="git branch -a"
alias ci="git commit"
alias co="git checkout"
alias d="git diff"
alias dc="git diff --cached"
alias fp="git format-patch"
alias g="git !git gui &"
alias gr="git log --graph"
#alias go="git log --graph --pretty=oneline --abbrev-commit"
alias k="git !gitk &"
alias ka="git !gitk --all &"
alias lc="git log ORIG_HEAD.. --stat --no-merges"
alias lp="git log --patch-with-stat"
alias mnf="git merge --no-ff"
alias mnff="git merge --no-ff"
alias mt="git mergetool"
alias p="git format-patch -1"
alias serve="git !git daemon --reuseaddr --verbose --base-path=. --export-all ./.git"
alias sra="git svn rebase --all"
alias sh="git !git-sh"
alias st="git status"
alias stm="git status --untracked=no"
alias stfu="git status --untracked=no"
alias pullsrb="git !git stash save && git pull --rebase && git stash pop && echo 'Success!'"

alias vim="stty -ixon; nvim"
# `Frozing' tty, so after any command terminal settings will be restored
ttyctl -f

[[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"# Path to your oh-my-zsh installation.
export ZSH=/Users/gmuresan/.oh-my-zsh

alias am="cd ~/allovance/allovance"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PATH="$HOME/.yarn/bin:$PATH"

export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
#. "/usr/local/opt/nvm/nvm.sh"

unsetopt correct_all

export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"

export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
alias java11='export JAVA_HOME=$JAVA_11_HOME'
java11
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"

export VIRTUALENVWRAPPER_PYTHON=/usr/local/opt/python@3.8/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/makersplace
source /usr/local/bin/virtualenvwrapper.sh

