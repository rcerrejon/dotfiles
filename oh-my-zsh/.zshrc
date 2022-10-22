# NEOline

# Path to your oh-my-zsh installation.
export ZSH=/Users/rafael/.oh-my-zsh
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/sbin:$PATH

# Android Paths
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Visual Studio Code Paths
export REACT_EDITOR=code

# Theme
ZSH_THEME="dracula-pro"

# Plugins
plugins=(
  git
  brew
  common-aliases
  node
  npm
  rand-quote
  sudo
  yarn
  colored-man-pages
  colorize
  cp
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias myip='curl -s ip.appspot.com | pbcopy;pbpaste'
alias flush_dns='sudo dscacheutil -flushcache'
alias hosts='code /etc/hosts'
alias landown='sudo ifconfig en0 down'
alias lanup='sudo ifconfig en0 up'
alias feierabend='sudo shutdown -h now'
alias andsim='~/Library/Android/sdk/tools/emulator -avd Pixel'
alias openxcode='open ios/*.xcworkspace'
alias gdc='git diff --check'
alias shakeit='adb shell input keyevent 82'
alias podi='npx pod-install ios'
alias podintel="cd ios && arch -x86_64 pod install && .."
alias cleanDerivedData='rm -rf ~/Library/Developer/Xcode/DerivedData/*'
alias l='exa -lha'

# Set Spaceship ZSH as a prompt
fpath=($fpath "/Users/rafael/.zfunctions")
autoload -U promptinit; promptinit
prompt spaceship

