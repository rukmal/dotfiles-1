# ==========================================
# Include others
# ==========================================
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ -f ~/.profile ]; then
    source ~/.profile
fi

# ==========================================
# Automatically added
# ==========================================
### vvv disabled brew because Yosemite broke Ruby which broke it vvv
# echo 'source "`brew --prefix grc`/etc/grc.bashrc"' >> ~/.bash_profilesource "`brew --prefix grc`/etc/grc.bashrc"
export PATH=/Applications/B1FreeArchiver.app/Contents/MacOS:$PATH
# added by Anaconda 1.9.1 installer
# export PATH="/Users/christophersu/anaconda/bin:$PATH"
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
