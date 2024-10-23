if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="powerlevel10k/powerlevel10k"

# Theme settings
export TERM="xterm-256color"
SPACESHIP_TIME_SHOW=true
SPACESHIP_EXEC_TIME_SHOW=true

HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git github)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source $ZSH/oh-my-zsh.sh
export PATH="$HOME/.local/bin:$PATH"

 #To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
 #rt PATH="$HOME/.local/bin:$PATH"
 #
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#alias
alias gti=git
alias cdir="ls -l . | grep -c ^d"
alias unsus=fg
alias tks="tmux kill-server"
alias vi=nvim
alias tmux="tmux -u"
alias vim=nvim
alias glg="git log --all --decorate --oneline --graph"
alias gfiles="git log --pretty=format: --name-only --diff-filter=A | sort - | sed '/^$/d'"
alias galias="cd ~ && cat .zshrc | alias"
alias gcpd="git checkout dev;git pull origin dev"
alias bb="byobu"
alias fk="fuck"
alias lp="cd ~/Documents/log-pose"
alias bw="bun --watch index.ts"
alias swb="cd ~/Documents/projects/sWiz/backend"
alias ad="ssh -i ~/.ssh/adbrew_do  root@165.22.212.230"

alias dcu="docker compose up"
alias dcrm="docker compose rm"
alias dcd="docker compose down"

alias sus="systemctl suspend"
cpp() {
    g++ "$1" -o out && ./out
}


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
eval $(thefuck --alias)
eval "$(zoxide init zsh)"




export TERM='xterm-256color'
export EDITOR='nvim'
export VISUAL='nvim'



export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# bun completions
[ -s "/home/sebin/.bun/_bun" ] && source "/home/sebin/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# go

export PATH=$PATH:/usr/local/go/bin

