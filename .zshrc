export ZSH="/home/valentin/.oh-my-zsh"

ZSH_DISABLE_COMPFIX="true"

ZSH_THEME="oxide"

export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

export VISUAL=vim
export EDITOR="$VISUAL"


plugins=(
	git
	zsh-autosuggestions

)
alias push="git push"

source $ZSH/oh-my-zsh.sh


alias journal="sudo journalctl -fa"
alias docker="sudo docker"
alias docker-compose="sudo docker-compose"


source <(kubectl completion zsh)
alias k=kubectl
alias kns="kubectl ns"
alias kctx="kubectl ctx"
complete -F __start_kubectl k

rgrep() { 
    if [ "$#" -eq 0 ]; then
        echo "Usage: $FUNCNAME pattern [options] -- see grep usage"
        return
    # one arg - pattern
    elif [ "$#" -eq 1 ]; then
        grep -rn "$@" *;
    # 2 args - flag pattern
    elif [ "$#" -eq 2 ]; then
        first=$1
        shift
        grep -rn "$first" "$@" *;
    # more than 2 args
    else 
        echo "Usage: $FUNCNAME 2+ params not yet supported"
        return
    fi
}

alias nv="nvim"

# cd
alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."
alias ........="cd ../../../.."

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="/home/valentin/.fzf/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/home/valentin/.local/bin:/mnt/c/Windows/system32:/home/valentin/google-cloud-sdk/bin"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"


export GOROOT=/usr/lib/go
export GOPATH=$HOME/.go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

#/usr/bin/keychain -q --nogui $HOME/.ssh/id_ecdsa
#/usr/bin/keychain -q --nogui $HOME/.ssh/id_juniper
#source $HOME/.keychain/Thinkpad-Val-sh

eval "$(ssh-agent)" > /dev/null


export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="$PATH:$HOME/.rvm/bin"

# Rust
source "$HOME/.cargo/env"

#source /home/valentin/.config/broot/launcher/bash/br

#eval "$(atuin init zsh --disable-up-arrow)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/mcli mcli

neofetch --ascii_distro Arch --color_blocks off

############### END CUSTOM
# --------------------------------------------------------------------------------------

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


#if [ -f '/home/valentin/google-cloud-sdk/path.zsh.inc' ]; then . '/home/valentin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/home/valentin/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/valentin/google-cloud-sdk/completion.zsh.inc'; fi
