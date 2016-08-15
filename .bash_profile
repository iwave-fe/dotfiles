# .bash_profile

if [ -f ~/.bachrc ]; then
  . ~/.bashrc
fi

PATH=$PATH:$HOME/.local/bin:$HOME/bin:/opt/local/bin

export PATH

alias vim='/opt/local/bin/vim'

alias grep='grep --color'
alias df='df -h'

alias ls='gls --color=auto'
alias ll='gls -al --color=auto'
alias cp='cp -i'
alias mv='mv -i'

# プロンプト
# デフォルト ¥h:¥W ¥u¥$ (ホスト名、現在のディレクトリ、ユーザ名)
PS1='\e[0;34m[\W \u]\e[0;35m\$ \e[0m'
