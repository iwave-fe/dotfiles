# .bash_profile

if [ -f ~/.bachrc ]; then
  . ~/.bashrc
fi

PATH=$PATH:$HOME/.local/bin:$HOME/bin:/usr/bin

export PATH

export PATH=$PATH:$HOME/.nodebrew/current/bin

export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK=$HOME/Library/Android/sdk
export ANDROID_NDK=$HOME/Library/Android/sdk/ndk-bundle
# export ANDROID_NDK=$HOME/Library/Android/sdk/android-ndk-r12b
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH="$PATH:$PYENV_ROOT/bin"
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"

export PATH="$PATH:$RBENV_ROOT/bin"
export RBENV_ROOT="$HOME/.rbenv"
eval "$(rbenv init -)"

alias grep='grep --color'
alias df='df -h'

alias ls='ls -FG'
alias ll='ls -alFG'
alias cp='cp -i'
alias mv='mv -i'
# ssh接続時、configの名称でターミナルのプロファイルを変更
alias ssh='/usr/local/bin/ssh-change-theme'
# dockerコンテナ接続時、ターミナルのプロファイルを変更
alias dockerbash='/usr/local/bin/docker-bash-change-theme'
# brewのwarning回避(brew実行時、pyenvのパスが衝突することを回避)
alias brew="env PATH=${PATH/${HOME}\/\.pyenv\/shims:/} brew"
# docker ps 表示編集
alias dockerpsf='docker ps --format  "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias dockerpsa='docker ps -a --format  "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'

HISTIGNORE=history

# プロンプト
# デフォルト ¥h:¥W ¥u¥$ (ホスト名、現在のディレクトリ、ユーザ名)
PS1='\[\033[0;34m\][\W/]\[\033[0;35m\]\n\$ \[\e[0m\]'
export PATH="/usr/local/opt/gettext/bin:$PATH"
