# ==========================================
# Include others
# ==========================================
source ~/.profile # Get the paths
source ~/.bashrc  # get aliases


# ==========================================
# HCR
# ==========================================
## My version of my_ip for Mac:
function my_ip() {
    MY_IP=$(ifconfig en0 | grep inet | grep -v inet6 | awk '{print $2}')
    echo ${MY_IP:-"Not connected"}
}

function cloudrobot() {
  unset ROBOT;
  unset ROS_HOSTNAME;
  export ROS_MASTER_URI=http://$1:11311
  export ROS_IP=`my_ip`
}

# # ==========================================
# Android/Firefox mobile
# # ==========================================
# export PATH=$PATH:$HOME/oss/adt-bundle-mac/sdk/tools:$HOME/oss/adt-bundle-mac/sdk/build-tools:$HOME/oss/adt-bundle-mac/sdk/platform-tools

# ==========================================
# Ruby
# ==========================================
source /Users/christophersu/.rvm/scripts/rvm

# ==========================================
# Python
# ==========================================
alias makevenv='virtualenv --distribute env'
alias startvenv='virtualenv --distribute env'
alias venv='source env/bin/activate'
alias oldmakevenv='virtualenv --distribute venv'
alias oldvenv='source venv/bin/activate'

# ==========================================
# Node
# ==========================================
export PATH=/usr/local/share/npm/bin:$PATH

# ==========================================
# Fortan
# ==========================================
source /Users/christophersu/.fortran

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

# Create a new git repo locally and on GitHub
# Usage: gin [name of repository and name for GitHub repo]
gin () {
    hub init "$1"
    cd "$1"
    hub create "$1"
}


# ==========================================
# Misc
# ==========================================
alias serv='python -m SimpleHTTPServer'
alias serve='python -m SimpleHTTPServer'
alias server='python -m SimpleHTTPServer'

alias p='pwd'
alias pc='pwd | pbcopy' # Copy current working directory to clipboard
mkcd () {
        mkdir "$1";
        cd "$1";
}
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
PS1="\[$NO_COLOR\]csu:\W\[$BLUE\]\$(parse_git_branch)\[$NO_COLOR\]\$ "
export PS1

# ==========================================
# AMATH 583
# ==========================================
export PATH="/Users/christophersu/anaconda/bin:$PATH"
export UWHPSC="/Users/christophersu/SkyDrive/School/2014 Spring/AMATH 483/uwhpsc"
export MYHPSC="/Users/christophersu/SkyDrive/School/2014 Spring/AMATH 483/amath583"
alias uwhpsc='cd /Users/christophersu/SkyDrive/School/2014\ Spring/AMATH\ 483/uwhpsc'
alias myhpsc='cd /Users/christophersu/SkyDrive/School/2014\ Spring/AMATH\ 483/amath583'

# ==========================================
# AWS
# ==========================================
export JAVA_HOME=$(/usr/libexec/java_home)
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.6.13.0
export PATH=$PATH:$EC2_HOME/bin
source ~/.aws_secret # get AWS secrets

# ==========================================
# Automatically added
# ==========================================
echo 'source "`brew --prefix grc`/etc/grc.bashrc"' >> ~/.bash_profilesource "`brew --prefix grc`/etc/grc.bashrc"
export PATH=/Applications/B1FreeArchiver.app/Contents/MacOS:$PATH
# added by Anaconda 1.9.1 installer
# export PATH="/Users/christophersu/anaconda/bin:$PATH"
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH