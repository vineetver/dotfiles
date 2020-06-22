


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/blaq/.oh-my-zsh"
export PATH="/usr/local/bin:$PATH"



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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-autosuggestions
    zsh-completions
    autojump)

source $ZSH/oh-my-zsh.sh
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

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

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/blaq/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/blaq/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/blaq/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/blaq/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

####################################################

# >>>>>   custom aliases
alias c="code .";
alias ls="ls -G --color=auto"
alias la="ls -aF --color=auto";
alias ll="ls -lF --color=auto"
alias lla="ls -laF --color=auto";
alias pg="echo 'Pinging Google' && ping www.google.com";
alias desk="cd ~/Desktop";
alias doc="cd ~/Documents";
alias npm-update="npx npm-check -u";
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

alias dockerstop='docker-compose stop'
alias dockerrestart='docker-compose restart'
alias dockerup='docker-compose up -d'
alias dockerrm='docker-compose rm --all'

alias zshrc='code ~/.zshrc'
alias topten="history | commands | sort -rn | head"
alias myip="curl http://ipecho.net/plain; echo"
alias usage='du -h -d1'
alias update="source ~/.zshrc"
alias sshdir="cd ~/.ssh"
alias runp="lsof -i "
alias ..='cd ..'
alias ...='cd ../..'
h() { history | grep "$1"; }                                                    # Shorthand for `history` with added grepping                                                  
alias mkdir='mkdir -pv'                                                         # Make parent directories if needed
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"             # List the file structure of the current directory
alias getsshkey="pbcopy < ~/.ssh/id_rsa.pub"                                    # Copy SSH key to the keyboard

                                 
alias home='clear && cd ~'                                                # Home directory                              # Downloads directory
cs() { cd "$@" &&  ls; }                                                        # Enter directory and list contents with ls
cl() { cd "$@" && ll; }                                                         # Enter directory and list contents with ll
site() { clear && cl $HOME/sites/"$@"; }                                        # Access site folders easier
wp-theme() { clear && cl $HOME/sites/"$@"/content/themes/"$@"; }                # Access a site theme folders easier
project() { clear && cl $HOME/projects/"$@"; }                                  # Access project folders easier
email() { clear && cl $HOME/projects/emails/"$@"; }      
alias fuck='sudo $(fc -ln -1)'
alias path='echo -e ${PATH//:/\\n}'
alias jn='jupyter notebook'

alias zepstart='zeppelin-daemon.sh start'
alias zepstop='zeppelin-daemon.sh stop'
alias zeprestart='zeppelin-daemon.sh restart'

alias brave='brave-browser'
alias zep='brave-browser http:localhost:8080/'

alias makepass="openssl rand -base64 20"

alias startenv='source ./venv/bin/activate'



neofetch | lolcat
source .profile
