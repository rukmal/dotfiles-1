if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

if [ -f ~/.uwcse ]; then
    source ~/.uwcse
fi

# ==========================================
# HCR
# ==========================================
## My version of my_ip for Mac:
# function my_ip() {
#    MY_IP=$(ifconfig en0 | grep inet | grep -v inet6 | awk '{print $2}')
#    echo ${MY_IP:-"Not connected"}
#}
#
#function cloudrobot() {
#  unset ROBOT;
#  unset ROS_HOSTNAME;
#  export ROS_MASTER_URI=http://$1:11311
#  export ROS_IP=`my_ip`
#}

# ==========================================
# Text Editing
# ==========================================
alias v='mvim' # v to MacVim
alias vi='mvim' # vi to MacVim
alias mvi='mvim' # mvi to MacVim
#alias gvim='mvim' # seems to not need an alias

function note() {
    if [ -z "$1" ]
    then
        local title=$(date +%Y-%m-%d)
    else
        local title=$1
    fi
    if [ -z "$2" ]
    then
        geeknote create --title "$title"
        geeknote edit --note "$title" --content "WRITE"
    else
        geeknote create --title "$title" --notebook "$2"
        geeknote edit --note "$title" --content "WRITE" --notebook "$2"
    fi
}

alias resume='cd ~/OneDrive/Career/Resume/Pages && make resume'

# # ==========================================
# Android/Firefox mobile
# # ==========================================
# export PATH=$PATH:$HOME/oss/adt-bundle-mac/sdk/tools:$HOME/oss/adt-bundle-mac/sdk/build-tools:$HOME/oss/adt-bundle-mac/sdk/platform-tools

# ==========================================
# Ruby
# ==========================================

# ==========================================
# Java
# ==========================================
j () {
    javac $1.java
    java $1
}
alias ja='j'
alias jav='j'

# ==========================================
# Python
# ==========================================
alias makevenv='virtualenv --distribute env'
alias startvenv='virtualenv --distribute env'
alias venv='source env/bin/activate'
alias oldmakevenv='virtualenv --distribute venv'
alias oldvenv='source venv/bin/activate'

alias pypiupdate='python setup.py sdist upload'
alias pypiupgrade='python setup.py sdist upload'
alias pypiupload='python setup.py sdist upload'

pipupdate () {
    pip uninstall "$1" && pip install "$1" && pip freeze > requirements.txt
}

# ==========================================
# Node
# ==========================================
export PATH=/usr/local/share/npm/bin:$PATH

alias npmsave='npm update --save'
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
## From @rukmal
alias gif='git fetch'
alias gis='git status'
alias gid='git diff'
alias gia='git add -A'
alias gih='git push heroku master'

# Function for git add, commit and push
# Note: Commits ALL files in working directory.
# Usage: gip [commit message] [branch to be push to]
gip () {
    git add -A
    git commit -m "$1";
    git push origin $2;
}

# Function for git add and commit
# Note: Commits ALL files in working directory.
# Usage: gic [commit message]
gic () {
    git add -A
    git commit -m "$1"
}

## Mine:
alias gil='git pull'
alias gipset='git push --set-upstream origin master'
alias setgip='git push --set-upstream origin master'

giph () {
    git add -A
    git commit -m "$1";
    git push origin $2;
    git push heroku master
}

# Create a new git repo locally and on GitHub
# Usage: gin [name of repository and name for GitHub repo]
gin () {
    hub init "$1"
    cd "$1"
    hub create "$1"
}

# Change the origin remote of the repo
gir () {
    if [ "$#" -eq  1 ]; then
        git remote rm origin
        git remote add origin "$1"
    else
        git remote rm "$1"
        git remote add "$1" "$2"
    fi
}

gim () {
    git merge "$1"
}

# ==========================================
# Misc
# ==========================================
alias serv='python -m SimpleHTTPServer'
alias serve='python -m SimpleHTTPServer'
alias server='python -m SimpleHTTPServer'

## Because I can never remember aliases:
mc () {
        mkcd "$1";
}
mcd () {
        mkcd "$1";
}
 
## Use a long listing format ##
alias ll='ls -la'
alias sl='ls'
alias la='ls -a'
 
## Show hidden files ##
alias l.='ls -d .* --color=auto'
alias mkdir='mkdir -pv'

function extract () {
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
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

## Colors
export CLICOLOR=1
RED="\[\033[1;31m\]"
BLUE="\[\033[0;34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
LIGHT_CYAN="\[\033[1;36m\]"
NO_COLOR="\[\033[0m\]"

## Actual PS1
# PS1="$NO_COLOR"
# PS1+="csu:\W"
# PS1+="$BLUE"
# PS1+="\$(parse_git_branch)"
# PS1+="$NO_COLOR"
# PS1+="$ "
PS1="\[\033[0m\]csu:\W\[\033[0;34m\]\$(parse_git_branch)\[\033[0m\]$ "
export PS1

# ==========================================
# AMATH 583
# ==========================================
export PATH="/Users/christophersu/anaconda/bin:$PATH"
# export UWHPSC="/Users/christophersu/SkyDrive/School/2014 Spring/AMATH 483/uwhpsc"
# export MYHPSC="/Users/christophersu/SkyDrive/School/2014 Spring/AMATH 483/amath583"
# alias uwhpsc='cd /Users/christophersu/SkyDrive/School/2014\ Spring/AMATH\ 483/uwhpsc'
# alias myhpsc='cd /Users/christophersu/SkyDrive/School/2014\ Spring/AMATH\ 483/amath583'

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
mkcd () {
        mkdir "$1";
        cd "$1";
}

# Echo
alias path='echo -e ${PATH//:/\\n}'

# Common directories
alias code='cd ~/Code'
alias dotfiles='cd ~/Code/dotfiles'
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