#!/bin/sh

echo "First setup Macos!"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor

brew install \
    git \
    node \
    unrar \
    wget \
    zsh \
    zsh-completions \
    zsh-history-substring-search \
    zsh-syntax-highlighting

brew cask install google-chrome
brew cask install iterm2
brew cask install skype
brew cask install spectacle
brew cask install spotify
brew cask install atom

brew cleanup --force

echo "All done :-)"
