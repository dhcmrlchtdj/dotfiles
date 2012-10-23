PROMPT="[%{$fg[blue]%}%n%{$reset_color%}@%{$fg[cyan]%}%m"
PROMPT="${PROMPT} %{$fg[red]%}%B%1~%b%{$reset_color%}]%# "

export EDITOR="vim"
export TERM='konsole-256color'

## alias

# 删除
alias rm='rm -rvf'
# ls 系列
alias ls='ls --color=auto --group-directories-first -vF'
alias la='ls -A'
alias ll='ls -lAh --time-style=long-iso'
#
alias df='df -Th'

# systemclt
alias start_nginx='sudo systemctl start nginx'
alias stop_nginx='sudo systemctl stop nginx'

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
alias activate='source .pyvenv/bin/activate'
alias py='python'
alias py2='python2'

# 代理
alias goagent='python2 ~/library/wall/goagent/local/proxy.py'

# 命令补全
fpath=(~/.zshfuncs $fpath)
autoload -U compinit
compinit

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
