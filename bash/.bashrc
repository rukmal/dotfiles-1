# ==========================================
# Includes
# ==========================================
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

### Custom
for i in ~/.dotfiles ~/dotfiles; do
    if [ -d "$i" ]; then
        for f in `find "$i" -not -type d`; do
           source $f
        done
    fi
done

if [ -f ~/.custom ]; then
    source ~/.custom
fi

if [ -f ~/.other ]; then
    source ~/.other
fi

# ==========================================
# PS1
# ==========================================
## Function to get the current git branch
function parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export CLICOLOR=1

txtblk='\[\e[0;30m\]' # Black - Regular
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
bldblk='\[\e[1;30m\]' # Black - Bold
bldred='\[\e[1;31m\]' # Red
bldgrn='\[\e[1;32m\]' # Green
bldylw='\[\e[1;33m\]' # Yellow
bldblu='\[\e[1;34m\]' # Blue
bldpur='\[\e[1;35m\]' # Purple
bldcyn='\[\e[1;36m\]' # Cyan
bldwht='\[\e[1;37m\]' # White
unkblk='\[\e[4;30m\]' # Black - Underline
undred='\[\e[4;31m\]' # Red
undgrn='\[\e[4;32m\]' # Green
undylw='\[\e[4;33m\]' # Yellow
undblu='\[\e[4;34m\]' # Blue
undpur='\[\e[4;35m\]' # Purple
undcyn='\[\e[4;36m\]' # Cyan
undwht='\[\e[4;37m\]' # White
bakblk='\[\e[40m\]'   # Black - Background
bakred='\[\e[41m\]'   # Red
bakgrn='\[\e[42m\]'   # Green
bakylw='\[\e[43m\]'   # Yellow
bakblu='\[\e[44m\]'   # Blue
bakpur='\[\e[45m\]'   # Purple
bakcyn='\[\e[46m\]'   # Cyan
bakwht='\[\e[47m\]'   # White
txtrst='\[\e[0m\]'    # Text Reset

# High Intensity
IBlack='\[\e[0;90m\]'       # Black
IRed='\[\e[0;91m\]'         # Red
IGreen='\[\e[0;92m\]'       # Green
IYellow='\[\e[0;93m\]'      # Yellow
IBlue='\[\e[0;94m\]'        # Blue
IPurple='\[\e[0;95m\]'      # Purple
ICyan='\[\e[0;96m\]'        # Cyan
IWhite='\[\e[0;97m\]'       # White

if [ -d "/Users/christophersu" ]; then
    # On local mac
    PS1="${txtblu}csu:${txtgrn}\W${txtblu}\$(parse_git_branch)${IPurple}$ ${txtrst}"
else
    # On some other machine
    PS1="${txtblu}csu${bldblu}@\h${txtblu}:${txtgrn}\W${txtblu}\$(parse_git_branch)${IPurple}$ ${txtrst}"
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
alias gipa='git remote | xargs -L1 git push'

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
# Path
# ==========================================
export PATH=/usr/local/bin:$PATH

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
