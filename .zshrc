PROMPT="[%{$fg[blue]%}%n%{$reset_color%}@%{$fg[cyan]%}%m"
PROMPT="${PROMPT} %{$fg[yellow]%}%B%1~%b%{$reset_color%}]%# "

export EDITOR="vim"
export TERM='xterm-256color'

## alias

# 删除
alias rm='rm -rvf'
# ls 系列
alias ls='ls --color=auto --group-directories-first -vF'
alias la='ls -A'
alias ll='ls -lAh'
#
alias df='df -Th'

#systemclt
#alias start='sudo systemclt start'
#alias restart='sudo systemclt restart'
#alias stop='sudo systemclt stop'
#alias status='sudo systemclt status'
#alias enable='sudo systemclt enable'
#alias disable='sudo systemclt disable'

# 工具
alias vi='vim'
alias zip='7z a -tzip'
alias 7zx='7z x -r'
alias txz='tar xzvf'
alias txj='tar xjvf'
alias axel='axel -n 10'
alias R='R --silent --no-save'
alias ssh='ssh -2'
# python virtualenv
alias activate='source .pyenv/bin/activate'
alias py2='python2'

# 代理
alias goagent='python2 ~/library/wall/goagent/local/proxy.py'

# 终端打开文件
autoload -U zsh-mime-setup
zsh-mime-setup
alias -s png=kuickshow
alias -s jpg=kuickshow

alias -s pdf=okular
alias -s epub=okular

alias -s mp4=smplayer
alias -s avi=smplayer
alias -s mkv=smplayer
alias -s flv=smplayer
alias -s rmvb=smplayer

# 命令补全
fpath=(~/.zshfuncs $fpath)
autoload -U compinit
compinit
