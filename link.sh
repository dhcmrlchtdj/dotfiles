#!/bin/sh
script_path=`realpath "$0"`
file_path=`dirname $script_path`

ln -fs "${file_path}/bash/bashrc" ~/.bashrc

ln -fs "${file_path}/zsh/zshrc" ~/.zshrc
ln -fs "${file_path}/zsh/zsh_functions" ~/.zsh_functions

ln -fs "${file_path}/vim/vimrc" ~/.vimrc
ln -fs "${file_path}/vim/templates" ~/.vim/templates

ln -fs "${file_path}/git/gitconfig" ~/.gitconfig

ln -fs "${file_path}/fontconfig/fonts.conf" ~/.config/fontconfig/fonts.conf

ln -fs "${file_path}/r/Rprofile" ~/.Rprofile

ln -fs "${file_path}/opera/bookmarks.adr" ~/.opera/bookmarks.adr
ln -fs "${file_path}/opera/font.css" ~/.opera/styles/user/font.css
ln -fs "${file_path}/opera/operaprefs.ini" ~/.opera/operaprefs.ini
ln -fs "${file_path}/opera/search.ini" ~/.opera/search.ini
ln -fs "${file_path}/opera/speeddial.ini" ~/.opera/speeddial.ini
ln -fs "${file_path}/opera/urlfilter.ini" ~/.opera/urlfilter.ini
ln -fs "${file_path}/opera/standard_menu_1.ini" ~/.opera/menu/standard_menu_1.ini
ln -fs "${file_path}/opera/standard_mouse_1.ini" ~/.opera/mouse/standard_mouse_1.ini
ln -fs "${file_path}/opera/standard_toolbar_1.ini" ~/.opera/toolbar/standard_toolbar_1.ini

ln -fs "${file_path}/konsole/solarized_light.colorshceme" ~/.kde4/share/apps/konsole/solarized_light.colorscheme
