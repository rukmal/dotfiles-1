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

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# Pebble SDK
# export PATH="/Users/christophersu/pebble-dev/PebbleSDK-current/bin:$PATH"
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# The next line updates PATH for the Google Cloud SDK.
# source '/Users/christophersu/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
# source '/Users/christophersu/google-cloud-sdk/completion.bash.inc'
