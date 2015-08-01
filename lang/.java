# ==========================================
# Java
# ==========================================
function j() {
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