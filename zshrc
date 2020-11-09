export GOPATH=/Users/muhammadsyamsula/Desktop/go
export GOBIN=$GOPATH/bin


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/Users/muhammadsyamsula/confluent-5.5.1/bin:$PATH
export PATH=/Users/muhammadsyamsula/Desktop/bin:$PATH
export PATH=/Users/muhammadsyamsula/Desktop/cli-master:$PATH
export PATH=/usr/local/bin/travis:$PATH
export PATH=$PATH:/opt/apache-maven/bin
export PATH=$PATH:/Users/muhammadsyamsula/tomcat/bin


# Path to your oh-my-zsh installation.
export ZSH="/Users/muhammadsyamsula/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# DISABLE_MAGIC_FUNCTIONS=true

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
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
# alias python="python3"
# alias newtab="osascript -e 'tell application "Terminal" to activate' -e 'tell application "System Events" to tell process "Terminal" to keystroke "t" using command down'"
alias g="git status"
alias v="source venv/bin/activate"
alias ngetes='_ngetes() { python -m pytest -s "$1";}; _ngetes'
alias cover='_cover(){ python -m pytest -s --disable-warnings --cov-report html --cov=api tests }; _cover'
alias sb-swagger='code ~/Chimps/smartbiller/api/apps/views/swagger-ui.yml'
alias sb-api='code ~/Chimps/smartbiller'
alias go-staging='ssh -i ~/Documents/Credentials/seal-staging.pem infra@103.117.207.188'
alias go-prod='ssh -i ~/Documents/Credentials/smartbiller.pem admin@13.251.148.161'
alias go-anomaly='ssh -i /Users/muhammadsyamsula/Documents/Credentials/devops-smartbiller-anomaly.pem devops@103.117.207.18'
alias cde='conda deactivate'
# added by travis gem
[ -f /Users/muhammadsyamsula/.travis/travis.sh ] && source /Users/muhammadsyamsula/.travis/travis.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/muhammadsyamsula/gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/muhammadsyamsula/gcloud/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/muhammadsyamsula/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/muhammadsyamsula/gcloud/google-cloud-sdk/completion.zsh.inc'; fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/muhammadsyamsula/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/muhammadsyamsula/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/muhammadsyamsula/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/muhammadsyamsula/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

