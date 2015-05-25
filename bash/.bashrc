# ==========================================
# Includes
# ==========================================
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
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

### Mac
if [ -f ~/.mac ]; then
    source ~/.mac
fi

if [ -f ~/.aws ]; then
    source ~/.aws
fi

### Make a Jekyll post
if [ -f ~/.jekyll ]; then
    source ~/.jekyll
fi

### Fortan
if [ -f ~/.fortran ]; then
    source ~/.fortran
fi

# ==========================================
# Text Editing
# ==========================================
alias resume='cd ~/Dropbox/Career/Resume && make resume'

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
alias py='python'

# Virtualenv
alias makevenv='virtualenv --distribute env'
alias startvenv='virtualenv --distribute env'

alias venv='source env/bin/activate'
alias deac='deactivate'

## PyPy
alias p='pypy'
alias pypyvenv='virtualenv env -p `which pypy`'
alias pypyenv='virtualenv env -p `which pypy`'

# PyPi
alias pypisubmit='python setup.py register -r pypi'

alias pypiregister='pypisubmit'
alias pypinew='pypisubmit'
alias pypicreate='pypisubmit'

alias pypiupdate='python setup.py sdist upload'
alias pypiupload='pypiupdate'

# Pip
function pipupdate() {
    pip install --upgrade "$1" && pip freeze > requirements.txt
}
alias pipupgrade='pipupdate'

alias pipfreeze='pip freeze > requirements.txt'
alias pif='pipfreeze'

function pipinstall() {
    if [ $# -eq 0 ]
        then
            pip install -r requirements.txt
        else
            pip install -r "$1"
    fi
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


function gulpgip() {
    gulp;
    git add -A;
    git commit -m "$1";
    git push origin $2;
}

# ==========================================
# Go
# ==========================================
if [ -f ~/.go ]; then
    source ~/.go
fi

# ==========================================
# MongoDB
# ==========================================
alias mongod='mongod --dbpath data/'

# ==========================================
# MongoDB
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
alias code='cd ~/code'
alias dotfiles='cd ~/code/dotfiles'
alias csu.='cd ~/code/csu.github.io'
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
# if [ -f /usr/libexec/java_home ]; then
#     export JAVA_HOME=$(/usr/libexec/java_home)
#     export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.6.13.0
#     export PATH=$PATH:$EC2_HOME/bin
# fi

# if [ -f ~/.aws_secret ]; then
#     source ~/.aws_secret # get AWS secrets
# fi

# ==========================================
# Automatically added
# ==========================================
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=/usr/local/bin:$PATH
# export PATH=/usr/local/share/python:$PATH