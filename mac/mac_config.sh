# make dock animations faster
defaults write com.apple.Dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.7
killall Dock

# set screenshot configuration
defaults write com.apple.screencapture location /Users/csu/SkyDrive/Screenshots
defaults write com.apple.screencapture type jpg
killall SystemUIServer