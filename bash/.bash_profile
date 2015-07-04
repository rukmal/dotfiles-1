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
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH