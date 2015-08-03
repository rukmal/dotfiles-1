# ==========================================
# Includes
# ==========================================
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

### Custom
if [ -f ~/.custom ]; then
    source ~/.custom
fi

if [ -f ~/.other ]; then
    source ~/.other
fi

### School
if [ -f ~/.uwcse ]; then
    source ~/.uwcse
fi

if [ -f ~/.school ]; then
    source ~/.school
fi

if [ -f ~/.hcrlab ]; then
    source ~/.hcrlab
fi

### Misc
if [ -f ~/.mac ]; then
    source ~/.mac
fi

if [ -f ~/.aws ]; then
    source ~/.aws
fi

### Languages
if [ -f ~/.fortran ]; then
    source ~/.fortran
fi

if [ -f ~/.golang ]; then
    source ~/.golang
fi

if [ -f ~/.dart ]; then
    source ~/.dart
fi

if [ -f ~/.java ]; then
    source ~/.java
fi

if [ -f ~/.python ]; then
    source ~/.python
fi

if [ -f ~/.node ]; then
    source ~/.node
fi

# ==========================================
# Ruby
# ==========================================
eval "$(rbenv init -)"

# ==========================================
# MongoDB
# ==========================================
alias mongod='mongod --dbpath data/'

# ==========================================
# MariaDB
# ==========================================
alias mariadb="cd '/usr/local/Cellar/mariadb/10.0.19' ; /usr/local/Cellar/mariadb/10.0.19/bin/mysqld_safe --datadir='/usr/local/var/mysql'"

# ==========================================
# Git
# ==========================================
alias gif='git fetch'
alias gis='git status'
alias gid='git diff'
alias gia='git add -A'
alias gih='git push heroku master'
alias gil='git pull'
alias gipset='git push --set-upstream origin master'
alias setgip='git push --set-upstream origin master'

function gip() {
    git add -A
    git commit -m "$1";
    git push origin $2;
}

function gib() {
    git checkout -b "$1"
}

function gic() {
    git add -A
    git commit -m "$1"
}

function giph() {
    git add -A
    git commit -m "$1";
    git push origin $2;
    git push heroku master
}

function gihp() {
    git add -A
    git commit -m "$1";
    git push origin $2;
    git push heroku master
}

# Create a new git repo locally and on GitHub
# Usage: gin [name of repository and name for GitHub repo]
function gin() {
    hub init "$1"
    cd "$1"
    hub create "$1"
}

# Change the origin remote of the repo
function gir() {
    if [ "$#" -eq  1 ]; then
        git remote rm origin
        git remote add origin "$1"
    else
        git remote rm "$1"
        git remote add "$1" "$2"
    fi
}

function gim() {
    git merge "$1"
}

# ==========================================
# Misc
# ==========================================
alias serv='python -m SimpleHTTPServer'
alias serve='python -m SimpleHTTPServer'
alias server='python -m SimpleHTTPServer'

alias reload='source ~/.bash_profile'

## Use a long listing format ##
alias sl='ls'
alias la='ls -a'
alias ll='ls -la'
# Show hidden files
alias l.='ls -d .* --color=auto'

alias mkdir='mkdir -pv'

function extract() {
        if [ -f $1 ] ; then
                case $1 in
                        *.tar.bz2)      tar xjf $1              ;;
                        *.tar.gz)       tar xzf $1              ;;
                        *.bz2)          bunzip2 $1              ;;
                        *.rar)          rar x $1                ;;
                        *.gz)           gunzip $1               ;;
                        *.tar)          tar xf $1               ;;
                        *.tbz2)         tar xjf $1              ;;
                        *.tgz)          tar xzf $1              ;;
                        *.zip)          unzip $1                ;;
                        *.Z)            uncompress $1   ;;
                        *)                      echo "'$1' cannot be extracted via extract()" ;;
                esac
        else
                echo "'$1' is not a valid file"
        fi
}

# Tell ls to be colourful
export LSCOLORS=Exfxcxdxbxegedabagacad

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# ==========================================
# PS1
# ==========================================
## Function to get the current git branch
function parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export CLICOLOR=1

if [ -d "/Users/christophersu" ]; then
    # On local mac
    PS1="\[\e[0;32m\]csu:\W\[\033[0;34m\]\$(parse_git_branch)\[\033[0m\]$ "
else
    # On some other machine
    PS1="\[\e[0;32m\]csu@\h:\W\[\033[0;34m\]\$(parse_git_branch)\[\033[0m\]$ "
fi

export PS1

# ==========================================
# Navigation
# ==========================================
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../'
alias ~='cd ~'

alias pc='pwd | pbcopy' # Copy current working directory to clipboard
function mkcd() {
        mkdir "$1";
        cd "$1";
}

# Echo
alias path='echo -e ${PATH//:/\\n}'

# Common directories
alias host='vim ~/etc/hosts'

# ==========================================
# Packages
# ==========================================
alias agi='sudo apt-get install'
alias agr='sudo apt-get remove'
alias agu='sudo apt-get update'
alias acs='apt-cache search'
alias yum='sudo yum'

# ==========================================
# Automatically added
# ==========================================
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=/usr/local/bin:$PATH