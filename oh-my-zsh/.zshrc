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
alias flush_dns='sudo dscacheutil -flushcache'
alias hosts='code /etc/hosts'
alias landown='sudo ifconfig en0 down'
alias lanup='sudo ifconfig en0 up'
alias andsim='~/Library/Android/sdk/tools/emulator -avd Pixel'
alias openxcode='open ios/*.xcworkspace'
alias editzsh='code ~/.zshrc'
alias shakeit='adb shell input keyevent 82'
alias cleanDerivedData='rm -rf ~/Library/Developer/Xcode/DerivedData/*'
alias l='eza -la -x --no-user --group-directories-first --icons=always --octal-permissions --no-permissions'

# GIT ALIAS
alias gdc='git diff --check'
alias gst='git status'
alias gaa='git add --all'
alias gcmsg='git commit -m'
alias gco='git switch'
alias ggpush='git push origin "$(git rev-parse --abbrev-ref HEAD)"'

# Set Spaceship ZSH as a prompt
fpath=($fpath "/Users/rafael/.zfunctions")
autoload -U promptinit; promptinit
prompt spaceship

