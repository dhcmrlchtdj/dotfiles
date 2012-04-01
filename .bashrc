#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# bash completion
complete -cf sudo
complete -cf man

#alias
alias ~='cd ~'
alias ..='cd ..'
alias rm='rm -rvf'
alias grep='grep --color=auto'
alias ls='ls --color=auto --group-directories-first -F'
alias la='ls -A'
alias ll='ls -lah'
alias df='df -Th'
alias du='du -h'
#alias pa='ps axf'
#alias fr='free -m'

alias zip='7z a -tzip'
alias 7zx='7z x -r'
alias txz='tar xzvf'
alias txj='tar xjvf'
#alias tcj='tar cjvf'
#alias tcz='tar czvf'
alias axel='axel -n 10 -a'
alias axels='axel -s 100000'
#alias cn='env LANG=zh_CN.utf8'

#alias python='python2'
#alias python='env LANG=zh_CN.utf8 python2'
#alias pipi='sudo pip2 install -v'
#alias pipu='sudo pip2 install --upgrade -v'

alias ngo_nginx_stop='sudo rc.d stop nginx'
alias nga_nginx_start='sudo rc.d start nginx'

#alias vpn_your_free_vpn='sudo openvpn --config ~/library/wall/yourfreevpn/YourFreeVPN-UDP.ovpn'
alias goagent='python2 /home/niris/library/wall/goagent/local/proxy.py'



#mount galaxy nexus
#alias mandroid='sudo mtpfs -o allow_other /home/niris/library/android'
#alias uandroid='sudo umount /home/niris/library/android'

#webteam mysql
alias webteamsql='mysql -u webteam -p webteam'
