# ==========================================
# Include
# ==========================================
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# ==========================================
# School
# ==========================================
if [ -f ~/.uwcse ]; then
    source ~/.uwcse
fi

if [ -f ~/.school ]; then
    source ~/.school
fi

# ==========================================
# Mac
# ==========================================
if [ -f ~/.mac ]; then
    source ~/.mac
fi

# ==========================================
# Text Editing
# ==========================================
alias v='mvim' # v to MacVim
alias vi='mvim' # vi to MacVim
alias mvi='mvim' # mvi to MacVim

## Evernote
# function note() {
#     if [ -z "$1" ]
#     then
#         local title=$(date +%Y-%m-%d)
#     else
#         local title=$1
#     fi
#     if [ -z "$2" ]
#     then
#         geeknote create --title "$title"
#         geeknote edit --note "$title" --content "WRITE"
#     else
#         geeknote create --title "$title" --notebook "$2"
#         geeknote edit --note "$title" --content "WRITE" --notebook "$2"
#     fi
# }

alias resume='cd ~/OneDrive/Career/Resume/Pages && make resume'

# ==========================================
# Java
# ==========================================
function j() {
    javac $1.java
    java $1
}
alias ja='j'
alias jav='j'

# ==========================================
# Python
# ==========================================
# Virtualenv
alias makevenv='virtualenv --distribute env'
alias startvenv='virtualenv --distribute env'
alias venv='source env/bin/activate'
alias oldmakevenv='virtualenv --distribute venv'
alias oldvenv='source venv/bin/activate'

alias deac='deactivate'
alias deact='deactivate'
alias deactiv='deactivate'

# PyPi
alias pypiupdate='python setup.py sdist upload'
alias pypiupgrade='python setup.py sdist upload'
alias pypiupload='python setup.py sdist upload'

# Pip
function pipupdate() {
    pip uninstall "$1" && pip install "$1" && pip freeze > requirements.txt
}

# ==========================================
# Node
# ==========================================
export PATH=/usr/local/share/npm/bin:$PATH

# package.json
alias npmsave='npm update --save'

function npmdev() {
    npm install --save-dev $1
}

# Gulp
alias setgulp='npm init && npm install --save-dev gulp'
alias gulpinit='npm init && npm install --save-dev gulp'

# ==========================================
# Fortan
# ==========================================
if [ -f ~/.fortran ]; then
    source ~/.fortran
fi

# ==========================================
# MongoDB
# ==========================================
alias mongod='mongod --dbpath data/'

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

## Because I can never remember aliases:
function mc() {
    mkcd "$1";
}

function mcd() {
    mkcd "$1";
}
 
## Use a long listing format ##
alias ll='ls -la'
alias sl='ls'
alias la='ls -a'
 
## Show hidden files ##
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

## Colors
export CLICOLOR=1
# RED="\[\033[1;31m\]"
# BLUE="\[\033[0;34m\]"
# LIGHT_GRAY="\[\033[0;37m\]"
# CYAN="\[\033[0;36m\]"
# LIGHT_CYAN="\[\033[1;36m\]"
# NO_COLOR="\[\033[0m\]"

host=$(hostname)
if [ $host != christophersu.local ]
then
    PS1="\[\033[0m\]\u@\h:\W\[\033[0;34m\]\$(parse_git_branch)\[\033[0m\]$ "
else
    PS1="\[\033[0m\]csu:\W\[\033[0;34m\]\$(parse_git_branch)\[\033[0m\]$ "
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

alias p='pwd'
alias pc='pwd | pbcopy' # Copy current working directory to clipboard
function mkcd() {
        mkdir "$1";
        cd "$1";
}

# Echo
alias path='echo -e ${PATH//:/\\n}'

# Common directories
alias code='cd ~/code'
alias dotfiles='cd ~/code/dotfiles'
alias dropbox='cd ~/Dropbox'
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
# AWS
# ==========================================
if [ -f /usr/libexec/java_home ]; then
    export JAVA_HOME=$(/usr/libexec/java_home)
    export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.6.13.0
    export PATH=$PATH:$EC2_HOME/bin
fi

if [ -f ~/.aws_secret ]; then
    source ~/.aws_secret # get AWS secrets
fi

# ==========================================
# Automatically added
# ==========================================
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=/usr/local/bin:$PATH
# export PATH=/usr/local/share/python:$PATH