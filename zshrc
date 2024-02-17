# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# export GOROOT="/usr/local/go"
# export GOPATH="/Users/muhammadsyamsularifin/goGRPC"
export GOPATH="/Users/muhammadsyamsularifin/go"
# export GOPATH="/Users/muhammadsyamsularifin/SyamsulApp-GoAPI:$GOPATH"
export GOBIN="/Users/muhammadsyamsularifin/go/bin"
# export GOBIN="/Users/muhammadsyamsularifin/SyamsulApp-GoAPI/bin:$GOBIN"
export ZSH="/Users/muhammadsyamsularifin/.oh-my-zsh"
export PATH="$PATH:/usr/local/bin:$GOPATH:$GOBIN"
export PATH="$PATH:/Users/muhammadsyamsularifin/apache-maven-3.6.3/bin"
export PATH="$PATH:/Users/muhammadsyamsularifin/rabbitmq_server-3.8.9/sbin"

# setting airflow home and config file
export AIRFLOW_HOME="/Users/muhammadsyamsularifin/linkaja/frodo"

# pythonpath
export PYTHONPATH="/Users/muhammadsyamsularifin/linkaja/frodo"

# airflow cannot import . from _mysql, _mysql not define (2 hari)
MYSQL=/usr/local/bin
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH="/usr/local/lib:$DYLD_LIBRARY_PATH"
export DYLD_LIBRARY_PATH="/Users/muhammadsyamsularifin/Downloads/oracle:$DYLD_LIBRARY_PATH"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

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

alias g="git status"
alias v="source ./venv/bin/activate"
alias zshrc="source ~/.zshrc"

buat(){
    cp ~/CP/blanko.cpp $1
    touch $1
}

kompail(){
    /usr/bin/g++ -std=c++11 -g $1 -o prog
}

run(){
    kompail $1
    ./prog < tests.txt > output.txt
    cat output.txt
}

linkaja-git(){
    eval "$(ssh-agent -s)"
    ssh-add -K ~/.ssh/id_rsa_gitlab_linkaja
    ssh -T git@gitlab.linkaja.com
}

private-gitlab(){
    eval "$(ssh-agent -s)"
    ssh-add -K ~/.ssh/msyamsula_gitlab
    ssh -T git@gitlab.com
}

cg(){
    eval "$(ssh-agent -s)"
    ssh-add -K ~/.ssh/$1
    ssh -T git@github.com
}

push(){
    cg $1
    git push origin $2
}

sd(){
    sudo shutdown -h now
}

go-dev(){
    ssh muhammad_arifin@10.14.3.20
}

go-stark(){
    mysql -h db-mysql-proxy.linkaja.dev -P 6033 -u apps -p
    # mysql -h 10.11.7.153 -P 3306 -u apps_frodo -p
}

send-dev(){
    rsync -avz . muhammad_arifin@10.14.3.20:/home/muhammad_arifin/frodo --exclude="venv" --exclude="__pycache__" --exclude="tests" --exclude=".git"
}

alias ws="/Users/muhammadsyamsularifin/frodo/venv/bin/airflow webserver"
alias ainit="/Users/muhammadsyamsularifin/frodo/venv/bin/airflow initdb"
alias sch="/Users/muhammadsyamsularifin/frodo/venv/bin/airflow scheduler"


cg(){
    eval "$(ssh-agent -s)"
    ssh-add -K ~/.ssh/$1
    ssh -T git@github.com
}

buat(){
    cp ~/CP/blanko.cpp $1
    touch $1
}

run(){
    clang++ -std=c++11 -stdlib=libc++ -Weverything -w $1 -o prog
    ./prog < input.txt > output.txt
}

go14(){
   alias go=~/go14/bin/go

}