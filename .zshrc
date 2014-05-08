source ~/dotfiles/.zshrc.antigen

# 補間
autoload -U compinit
compinit -u

# 文字コード
export LANG=ja_JP.UTF-8

# PATH
export PATH=/usr/local/sbin:/usr/local/bin:/opt/local/bin:$HOME/bin:$PATH:/usr/bin:/bin

# # z
# . `brew --prefix`/etc/profile.d/z.sh
# function precmd () {
#    z --add "$(pwd -P)"
# }

# git aliases
alias g="git"
alias glg="git log"
alias gfh="git fetch"
alias gpl="git pull --no-edit"
alias gps="git push"
alias gck="git checkout"
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
