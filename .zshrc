# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
setopt no_global_rcs
typeset -U path PATH
path=(
  /opt/homebrew/bin(N-/)
  /opt/homebrew/share(N-/)
  $path
)

# add 2021/08/28 start
export PATH=/opt/homebrew/bin/git:$PATH

# zsh comletions
FPATH=/opt/homebrew/share/zsh-completions:$FPATH
# autoload -Uz compinit
# compinit

# zsh syntax highlighting
 source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -Uz promptinit
promptinit
prompt elite2 blue
# add 2021/08/28 end

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)
plugins=(git zsh-syntax-highlighting zsh-completions)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export LANG=ja_JP.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias ll="ls -al"
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
# alias ssh="/usr/local/bin/ssh-change-theme"
alias echopath="echo $PATH | tr ':' '\n'"

