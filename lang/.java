# ==========================================
# Java
# ==========================================
function j() {
    if [ -e "$1.class" ]
    then
        rm "$1.class"
    fi
    javac $1.java
    java $1
}
alias ja='j'
alias jav='j'

function mksol() {
    mkdir $1
    cd $1
    subl Solution.java
}