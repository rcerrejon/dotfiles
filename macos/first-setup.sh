#!/bin/sh

echo "First setup Macos!"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor

brew install \
    git \
    node \
    unrar \
    wget \
    exa \    
    zsh \
    zsh-completions \
    zsh-history-substring-search \
    zsh-syntax-highlighting

brew cask install google-chrome
brew cask install iterm2
brew cask install spectacle
brew cask install spotify


brew cleanup --force

echo "All done :-)"
