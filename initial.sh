#!/bin/sh
script_path=`realpath "$0"`
file_path=`dirname $script_path`

echo "get dotfile path \"$file_path\""

#ln -fs "${file_path}/bash/bashrc" ~/.bashrc

#ln -fs "${file_path}/zsh/zshrc" ~/.zshrc
#ln -fs "${file_path}/zsh/zsh_functions" ~/.zsh_functions

#ln -fs "${file_path}/vim/vimrc" ~/.vimrc
#`mkdir ~/.vim`
#`mkdir ~/.vim/backup`
#`mkdir ~/.vim/bundle`
#`mkdir ~/.vim/undo`
#ln -fs "${file_path}/vim/templates" ~/.vim/templates
##`git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`

#ln -fs "${file_path}/git/gitconfig" ~/.gitconfig

#ln -fs "${file_path}/fontconfig/fonts.conf" ~/.config/fontconfig/fonts.conf
#ln -fs "${file_path}/fontconfig/fonts.conf" ~/.fonts.conf

##ln -fs "${file_path}/r/Rprofile" ~/.Rprofile

#`mkdir ~/.kde4/share/apps/konsole/`
##ln -fs "${file_path}/konsole/solarized_light.colorshceme" ~/.kde4/share/apps/konsole/solarized_light.colorscheme
