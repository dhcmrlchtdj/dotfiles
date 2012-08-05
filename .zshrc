PROMPT="[%{$fg[blue]%}%n%{$reset_color%}@%{$fg[cyan]%}%m"
PROMPT="${PROMPT} %{$fg[yellow]%}%B%1~%b%{$reset_color%}]%# "
 
export R_LIBS=$HOME/library/R
export EDITOR="vim"

## alias

# 删除
alias rm='rm -rvf'
# ls 系列
alias ls='ls --color=auto --group-directories-first -vF'
alias la='ls -A'
alias ll='ls -lAh'

# 工具
alias zip='7z a -tzip'
alias 7zx='7z x -r'
alias txz='tar xzvf'
alias txj='tar xjvf'
alias axel='axel -n 10'

# 代理
alias goagent='python2 /home/niris/library/wall/goagent/local/proxy.py'

# 查看图片
autoload -U zsh-mime-setup
zsh-mime-setup
alias -s png=kuickshow
alias -s jpg=kuickshow

