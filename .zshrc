source ~/dotfiles/.zshrc.antigen

# 補間
autoload -U compinit
compinit -u

# 文字コード
export LANG=ja_JP.UTF-8

# PATH
export PATH=/usr/local/sbin:/usr/local/bin:/opt/local/bin:$HOME/bin:$PATH:/usr/bin:/bin

# z
if which brew > /dev/null; then
  source $(brew --prefix)/etc/profile.d/z.sh
fi

# git aliases
alias g="git"
alias glg="git log"
alias gfh="git fetch"
alias gpl="git pull --no-edit"
alias gps="git push"
alias gck="git checkout"
alias gch="git branch"
alias gag="git tag"
alias ga="git add"
alias gc="git commit -v -m"
alias gs="git status -s"
alias gst="tig status"
alias gmg="git merge --no-ff --no-edit"
alias gdel="~/bin/git_delete_branches.sh"

# nodebrew
if [[ -f ~/.nodebrew/nodebrew ]]; then
  export PATH=$HOME/.nodebrew/current/bin:$PATH
fi

# perlbrew
source ~/perl5/perlbrew/etc/bashrc

# rbenv
# export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Android SDK
ANDROID_SDK=~/Library/Developer/Android\ SDK
export PATH=$PATH:${ANDROID_SDK}
export PATH=$PATH:${ANDROID_SDK}/platform-tools
export ANDROID_SDK_ROOT="$ANDROID_SDK"

# Android NDK
ANDROID_NDK=~/Library/Developer/Android\ NDK
export PATH=$PATH:${ANDROID_NDK}
export NDK_ROOT="$ANDROID_NDK"

# Cocos2d-x
# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=~/Library/Developer/Cocos2d-x\ 3.0/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable ANT_ROOT for Cocos2d-x
export ANT_ROOT=/usr/local/bin
export PATH=$ANT_ROOT:$PATH

# Application Alias
alias pyweb="python -m SimpleHTTPServer"
alias sbl="subl"

# w3m で ALC 検索
function alc() {
    if [ $ != 0 ]; then
        w3m "http://eow.alc.co.jp/$*/UTF-8/?ref=sa" | less +38
    else
        w3m "http://www.alc.co.jp/"
    fi
}

# w3m でGoogle translate English->Japanese
function gte() {
  google_translate "$*" "en-ja"
}
 
# w3m でGoogle translate Japanese->English
function gtj() {
  google_translate "$*" "ja-en"
}
