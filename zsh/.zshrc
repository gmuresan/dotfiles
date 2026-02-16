stty -ixon
unset MAILCHECK  # Suppress "You have new mail" notifications

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
plugins=(git) # vi-mode

#source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh # vim mode   brew install zsh-vi-mode

# User configuration

export NODE_OPTIONS="--max_old_space_size=12000"
export NODE_PATH='/usr/local/lib/node_modules'
export RIPGREP_CONFIG_PATH=~/.ripgreprc

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias k9='kill -9 %'

alias less='less -R'
# alias ag='/opt/homebrew/bin/ag --pager=less'
alias ag='ag --path-to-ignore ~/.agignore --pager=less'

alias gitpsu='git push --set-upstream origin $(current_branch)'

# Visasat
alias va='cd ~/viasat'
alias vap='cd ~/viasat/portal'
alias vapp='cd ~/viasat/preportal'

# Scorebet
alias mr='cd ~/score/web-monorepo/'
alias sb='cd ~/score/web-monorepo/projects/web/apps/sportsbook-web/'

# Amniscient
alias am='cd ~/amni'
alias amf='cd ~/amni/amniplatform-frontend'
alias amp='cd ~/amni/amniplatform'
alias ams='cd ~/amni/amnisphere'

# Projects
alias ca='cd ~/projects/crypto-agent'
alias cb='cd ~/clawdbot'
alias ra='cd ~/projects/ralph'
alias wb='cd ~/projects/website-builder-agent'

# Claude Code
alias cl='claude --model sonnet'
alias clo='claude --model opus'
alias clp='claude --model sonnet --dangerously-skip-permissions'
alias clop='claude --model opus --dangerously-skip-permissions'

alias cnvm='cd ~/.config/nvim/'
alias vnvm='cd ~/.config/nvim/ && nvim'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias b="git branch"
alias ba="git branch -a"
alias ci="git commit"
alias co="git checkout"
#alias cp="git cherry-pick"
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
# alias sh="git !git-sh"
alias st="git status"
alias stm="git status --untracked=no"
alias stfu="git status --untracked=no"
alias pullsrb="git !git stash save && git pull --rebase && git stash pop && echo 'Success!'"

alias vim="stty -ixon; nvim"
# `Frozing' tty, so after any command terminal settings will be restored
ttyctl -f

[[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"# Path to your oh-my-zsh installation.
# export ZSH=/Users/gmuresan/.oh-my-zsh

export PATH="$HOME/.yarn/bin:$PATH"

fpath+=("$(brew --prefix)/share/zsh/site-functions")

unsetopt correct_all

#if command -v pyenv 1>/dev/null 2>&1; then
#  eval "$(pyenv init -)"
#fi


#########
# vi mode
#########

bindkey -v

# switch to command mode with jj
bindkey '^j' vi-cmd-mode

# `v` is already mapped to visual mode, so we need to use a different key to
# open Vim
bindkey -M vicmd "^V" edit-command-line

# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

# incremental search in insert mode
bindkey "^F" history-incremental-search-forward
bindkey "^R" history-incremental-search-backward

# beginning search with arrow keys and j/k
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search

# beginning search in insert mode, redundant with the up/down arrows above
# but a little easier to press.
bindkey "^P" history-search-backward
bindkey "^N" history-search-forward

# incremental search in vi command mode
bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward
# navigate matches in incremental search
bindkey -M viins '^R' history-incremental-pattern-search-backward
bindkey -M viins '^F' history-incremental-pattern-search-forward

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() {
  echo -ne '\e[5 q'
}

_fix_cursor() {
  echo -ne '\e[5 q'
}
precmd_functions+=(_fix_cursor)


# Pure prompt loaded via znap below (commented out promptinit)
# autoload -U promptinit; promptinit
# prompt pure

#### ZNAP ####
# Download Znap, if it's not there yet.
[[ -f ~/Git/zsh-snap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/Git/zsh-snap

source ~/Git/zsh-snap/znap.zsh  # Start Znap

# `znap prompt` makes your prompt visible in just 15-40ms!
znap prompt sindresorhus/pure

# `znap source` automatically downloads and starts your plugins.
znap source marlonrichert/zsh-autocomplete # brew install zsh-autocomplete
znap source zsh-users/zsh-autosuggestions
#znap source zsh-users/zsh-syntax-highlighting # brew install zsh-syntax-highlighting

export NVM_AUTO_USE=true
export NVM_LAZY_LOAD=false
export NVM_COMPLETION=true
znap source lukechilds/zsh-nvm # nvm manager


# `znap eval` caches and runs any kind of command output for you.
znap eval iterm2 'curl -fsSL https://iterm2.com/shell_integration/zsh'

# Set iTerm2 user variable for subtitle (shows current directory name)
function _set_iterm_dir_var() {
  printf "\033]1337;SetUserVar=dirAbbrev=%s\007" "$(echo -n "${PWD##*/}" | base64)"
}
precmd_functions+=(_set_iterm_dir_var)

# Auto-color iTerm2 tab based on directory name (deterministic hash)
function _set_iterm_tab_color() {
  local dir="${PWD##*/}"
  
  # Sum ASCII values of directory name for simple deterministic hash
  local sum=0
  for (( i=0; i<${#dir}; i++ )); do
    sum=$((sum + $(printf '%d' "'${dir:$i:1}")))
  done
  local index=$((sum % 8))
  
  # 8 maximally distinct colors for dark backgrounds
  case $index in
    0) r=150; g=50;  b=50  ;;   # red
    1) r=50;  g=140; b=50  ;;   # green
    2) r=60;  g=60;  b=150 ;;   # blue
    3) r=150; g=140; b=40  ;;   # yellow
    4) r=50;  g=130; b=140 ;;   # cyan
    5) r=140; g=50;  b=130 ;;   # magenta
    6) r=150; g=100; b=50  ;;   # orange
    7) r=100; g=60;  b=140 ;;   # purple
  esac
  
  # Set iTerm2 tab background color
  printf "\033]6;1;bg;red;brightness;%d\a" $r
  printf "\033]6;1;bg;green;brightness;%d\a" $g
  printf "\033]6;1;bg;blue;brightness;%d\a" $b
}
precmd_functions+=(_set_iterm_tab_color)

# Reset tab color when leaving a directory (optional: uncomment if you want reset on cd)
# function _reset_iterm_tab_color() { printf "\033]6;1;bg;*;default\a"; }

# `znap function` lets you lazy-load features you don't always need.
# znap function _pyenv pyenv 'eval "$( pyenv init - --no-rehash )"'
# compctl -K    _pyenv pyenv
#


#source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -U compaudit && compinit

#### ZNAP ####

bindkey '^A' vi-forward-word

#export PYENV_ROOT="$HOME/.pyenv"
#command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#eval "$(direnv hook zsh)"

# virtualenvwrapper configuration
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/opt/homebrew/Cellar/python@3.10/3.10.18_1/Frameworks/Python.framework/Versions/3.10/bin/python3.10
export VIRTUALENVWRAPPER_VIRTUALENV=/opt/homebrew/bin/virtualenv
mkdir -p $WORKON_HOME
source /opt/homebrew/bin/virtualenvwrapper.sh

export PATH="$HOME/.local/bin:$PATH"

# OpenClaw
export OPENCLAW_STATE_DIR="$HOME/clawdbot/.openclaw"

# OpenClaw Security Audit Reminder (similar to oh-my-zsh update checker)
function _openclaw_security_check() {
  local OPENCLAW_DIR="$HOME/clawdbot/openclaw"
  local TIMESTAMP_FILE="$OPENCLAW_STATE_DIR/.last-security-audit"
  local DAYS_BETWEEN_AUDITS=7

  # Only check if OpenClaw directory exists
  if [[ ! -d "$OPENCLAW_DIR" ]]; then
    return
  fi

  # Check if we should remind (no timestamp file or older than 7 days)
  if [[ ! -f "$TIMESTAMP_FILE" ]] || [[ -n $(find "$TIMESTAMP_FILE" -mtime +${DAYS_BETWEEN_AUDITS} 2>/dev/null) ]]; then
    echo ""
    echo "🦞 [OpenClaw Security Reminder]"
    echo "   It's been ${DAYS_BETWEEN_AUDITS}+ days since your last security audit."
    echo "   Run: cd $OPENCLAW_DIR && pnpm openclaw security audit --deep"
    echo ""

    # Ask if they want to run it now
    echo -n "   Run security audit now? [y/N]: "
    read -r response

    if [[ "$response" =~ ^[Yy]$ ]]; then
      echo ""
      (cd "$OPENCLAW_DIR" && pnpm openclaw security audit --deep)
      echo ""
      echo "   Audit complete! Run 'pnpm openclaw security audit --fix' to apply fixes."
      mkdir -p "$(dirname "$TIMESTAMP_FILE")"
      date +%s > "$TIMESTAMP_FILE"
    else
      echo "   Skipped. You'll be reminded next time."
    fi
    echo ""
  fi
}

# Run the check on new terminal sessions
_openclaw_security_check

# OpenClaw Completion (only if openclaw is in PATH)
if command -v openclaw &>/dev/null; then
fi

# OpenClaw Completion
source "$OPENCLAW_STATE_DIR/completions/openclaw.zsh"

# pnpm
export PNPM_HOME="/Users/gm/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
