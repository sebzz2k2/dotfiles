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
alias hl="cd ~/Documents/hspl && ls"
alias script="cd /data/scripts/project_scripts"
alias hspl="sshpass -f hspluserpass.txt ssh sebin@10.66.66.9"
alias sshdb="cd ~ && cd Documents/hspl/keys/ && ssh -i 'hacklab_aws_keypair.pem' ubuntu@ec2-13-235-255-158.ap-south-1.compute.amazonaws.com && cd ~"
alias hapin="cd ~ && cd Documents/hspl/keys/ && ssh -i 'hacklab_aws_keypair.pem' ubuntu@ec2-3-111-117-136.ap-south-1.compute.amazonaws.com && cd ~"
alias hapio="cd ~ && cd Documents/hspl/keys/ && ssh -i 'hacklab_aws_keypair.pem' ubuntu@ec2-3-111-49-241.ap-south-1.compute.amazonaws.com && cd ~"
alias psqldb="psql -U postgres -d thingsboard -h 13.235.255.158 -W"
alias glg="git log --all --decorate --oneline --graph"
alias gfiles="git log --pretty=format: --name-only --diff-filter=A | sort - | sed '/^$/d'"
alias galias="cd ~ && cat .zshrc | alias"
alias gcpd="git checkout dev;git pull origin dev"
alias hlk="cd ~/Documents/hspl/keys"
alias bb="byobu"
alias fk="fuck"
alias h2="cd ~/Documents/hspl/hapi-v2"
alias hhdb="harlequin -t nord -a postgres -h 13.235.255.158 -p 5432 -U postgres --password HACK@LAB -d thingsboard"
alias tb="cd ~/Documents/hspl/trakrboard-frontend"
alias lp="cd ~/Documents/log-pose"
alias bw="bun --watch index.ts"
alias swb="cd ~/Documents/projects/sWiz/backend"
alias wup="sudo wg-quick up wg0"
alias wdw="sudo wg-quick down wg0" 

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

