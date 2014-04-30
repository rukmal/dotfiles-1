## android/firefox mobile
# export PATH=$PATH:$HOME/oss/adt-bundle-mac/sdk/tools:$HOME/oss/adt-bundle-mac/sdk/build-tools:$HOME/oss/adt-bundle-mac/sdk/platform-tools

# Ruby
source /Users/christophersu/.rvm/scripts/rvm

# Python
alias makevenv='virtualenv --distribute env'
alias startvenv='virtualenv --distribute env'
alias venv='source env/bin/activate'
alias oldmakevenv='virtualenv --distribute venv'
alias oldvenv='source venv/bin/activate'

# Node
export PATH=/usr/local/share/npm/bin:$PATH

# Fortan
alias gf='/Users/christophersu/Code/LearningFortran/bash/compile_execute_save_output'

# Git aliases (from @rukmal)
#------------
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

# Misc
PS1="csu:\W\$ "

# AMATH 583
export PATH="/Users/christophersu/anaconda/bin:$PATH"
export UWHPSC="/Users/christophersu/SkyDrive/School/2014 Spring/AMATH 483/uwhpsc"
export MYHPSC="/Users/christophersu/SkyDrive/School/2014 Spring/AMATH 483/amath583"
 
## Use a long listing format ##
alias ll='ls -la'
 
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

### My stuff (old)
# export PATH=/Users/christophersu/Code/bin:/usr/local/bin:$PATH

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

echo 'source "`brew --prefix grc`/etc/grc.bashrc"' >> ~/.bash_profilesource "`brew --prefix grc`/etc/grc.bashrc"

source ~/.profile # Get the paths
source ~/.bashrc  # get aliases
export PATH=/Applications/B1FreeArchiver.app/Contents/MacOS:$PATH

# added by Anaconda 1.9.1 installer
# export PATH="/Users/christophersu/anaconda/bin:$PATH"

export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH

# AWS
export JAVA_HOME=$(/usr/libexec/java_home)
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.6.13.0
export PATH=$PATH:$EC2_HOME/bin
source ~/.aws_secret # get AWS secrets