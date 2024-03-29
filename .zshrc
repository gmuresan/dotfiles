stty -ixon

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

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

export GOPATH="/Users/676616/go"
export PATH=$GOPATH/bin:$PATH

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
alias ag='/opt/homebrew/bin/ag --pager=less'

alias gitpsu='git push --set-upstream origin $(current_branch)'
alias br='bin/rails'
alias mp='cd ~/extension/browser-extension'
alias mpp='cd ~/extension/nft-extension-pricing'
alias pp='cd ~/proj/collections'
alias sp='cd ~/proj/contract'

alias wr='cd ~/proj/wallet && npm run dev -- --open'
alias cr='cd ~/proj/collections && npm run dev'
alias vr='cd ~/proj/voting && npm run dev'
alias rr='cd ~/proj/rich_nft && npm run dev'
alias ar='cd ~/proj/music_upload && npm run dev'

alias wp='cd ~/proj/wallet'
alias ccp='cd ~/proj/collections'
alias vp='cd ~/proj/voting'
alias rp='cd ~/proj/rich_nft'
alias ap='cd ~/proj/music_upload'

alias va='cd ~/viasat'
alias vap='cd ~/viasat/portal'
alias vapp='cd ~/viasat/preportal'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

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

alias vim="nvm use 16.14.1; stty -ixon; nvim"
# `Frozing' tty, so after any command terminal settings will be restored
ttyctl -f

[[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"# Path to your oh-my-zsh installation.
# export ZSH=/Users/gmuresan/.oh-my-zsh

export PATH="$HOME/.yarn/bin:$PATH"

export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

unsetopt correct_all

export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"

# export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
# alias java11='export JAVA_HOME=$JAVA_11_HOME'
# java11
# export PATH="/usr/local/opt/openjdk@11/bin:$PATH"

alias python=/opt/homebrew/bin/python3
alias python3=/opt/homebrew/bin/python3
alias pip3=/opt/homebrew/bin/pip3
alias pip=/opt/homebrew/bin/pip3
export PATH="/Users/gmuresan/Library/Python/3.9/bin:$PATH"
export VIRTUALENVWRAPPER_PYTHON=/opt/homebrew/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
source /Users/gmuresan/Library/Python/3.9/bin/virtualenvwrapper.sh

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# pnpm
export PNPM_HOME="/Users/676616/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

bindkey "^R" history-incremental-pattern-search-backward

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"


#### ZNAP ####
# Download Znap, if it's not there yet.
[[ -f ~/Git/zsh-snap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/Git/zsh-snap

source ~/Git/zsh-snap/znap.zsh  # Start Znap

# `znap prompt` makes your prompt visible in just 15-40ms!
znap prompt sindresorhus/pure

# `znap source` automatically downloads and starts your plugins.
znap source marlonrichert/zsh-autocomplete
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting

# `znap eval` caches and runs any kind of command output for you.
znap eval iterm2 'curl -fsSL https://iterm2.com/shell_integration/zsh'

# `znap function` lets you lazy-load features you don't always need.
znap function _pyenv pyenv 'eval "$( pyenv init - --no-rehash )"'
compctl -K    _pyenv pyenv

znap source marlonrichert/zsh-autocomplete

bindkey '^a' forward-word

#### ZNAP ####
