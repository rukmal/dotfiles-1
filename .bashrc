## android/firefox mobile
# export PATH=$PATH:$HOME/oss/adt-bundle-mac/sdk/tools:$HOME/oss/adt-bundle-mac/sdk/build-tools:$HOME/oss/adt-bundle-mac/sdk/platform-tools

# Ruby
source /Users/christophersu/.rvm/scripts/rvm

### Python
alias makevenv='virtualenv --distribute env'
alias startvenv='virtualenv --distribute env'
alias venv='source env/bin/activate'
alias oldmakevenv='virtualenv --distribute venv'
alias oldvenv='source venv/bin/activate'

# Node
export PATH=/usr/local/share/npm/bin:$PATH

# Misc
PS1="csu:\W\$ "

#### AMATH 583
export UWHPSC="/Users/christophersu/SkyDrive/School/2014 Spring/AMATH 483/uwhpsc"
export MYHPSC="/Users/christophersu/SkyDrive/School/2014 Spring/AMATH 483/amath583"
 
## Use a long listing format ##
alias ll='ls -la'
 
## Show hidden files ##
alias l.='ls -d .* --color=auto'

alias mkdir='mkdir -pv'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=/usr/local/bin:$PATH
# export PATH=/usr/local/share/python:$PATH

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