# make dock animations faster
defaults write com.apple.Dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.7

# set screenshot configuration
defaults write com.apple.screencapture location /Users/christophersu/Dropbox/Screenshots
defaults write com.apple.screencapture type jpg

# remove hold down letter, accent menu
defaults write -g ApplePressAndHoldEnabled -bool false

# faster key repeat
defaults write NSGlobalDomain KeyRepeat -int 0

# disable mouse acceleration
defaults write .GlobalPreferences com.apple.mouse.scaling -1

# add sublime cli
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

# restart system services for changes to take effect
killall Dock
killall SystemUIServer