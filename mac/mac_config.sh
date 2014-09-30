# make dock animations faster
defaults write com.apple.Dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.7
killall Dock

# set screenshot configuration
defaults write com.apple.screencapture location /Users/christophersu/OneDrive/Screenshots
defaults write com.apple.screencapture type jpg
killall SystemUIServer

# remove hold down letter, accent menu
defaults write -g ApplePressAndHoldEnabled -bool false

# faster key repeat
defaults write NSGlobalDomain KeyRepeat -int 0

# disable mouse acceleration
defaults write .GlobalPreferences com.apple.mouse.scaling -1