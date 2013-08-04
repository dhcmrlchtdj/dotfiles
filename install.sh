#!/usr/bin/env bash

prefix=$(pwd)

bashrc () {
	echo ">>> bashrc ..."
	dest="${HOME}/.bashrc"
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? ([y]/n) " opt
		case $opt in
			[nN] )
				echo "mv ...";
				mv -v ${dest}{,.orig};
				;;
			* )
				echo "skip $dest";
				return;
				;;
		esac
	fi
	echo "ln ...";
	ln -sv "${prefix}/bash/bashrc" "$dest";
}

git () {
	echo ">>> git ..."
	dest="${HOME}/.gitconfig"
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? ([y]/n) " opt
		case $opt in
			[nN] )
				echo "mv ...";
				mv -v ${dest}{,.orig};
				;;
			* )
				echo "skip $dest";
				return;
				;;
		esac
	fi
	echo "ln ...";
	ln -sv "${prefix}/git/gitconfig" "$dest";
}

fontconfig () {
	echo ">>> fontconfig ..."
	mkdir -pv "${HOME}/.config/fontconfig"
	dest="${HOME}/.config/fontconfig/fonts.conf"
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? ([y]/n) " opt
		case $opt in
			[nN] )
				echo "mv ...";
				mv -v ${dest}{,.orig};
				;;
			* )
				echo "skip $dest";
				return;
				;;
		esac
	fi
	echo "ln ...";
	ln -sv "${prefix}/fontconfig/fonts.conf" "$dest";
}

htop () {
	echo ">>> htop ..."
	mkdir -pv "${HOME}/.config/htop"
	dest="${HOME}/.config/htop/htoprc"
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? ([y]/n) " opt
		case $opt in
			[nN] )
				echo "mv ...";
				mv -v ${dest}{,.orig};
				;;
			* )
				echo "skip $dest";
				return;
				;;
		esac
	fi
	echo "ln ...";
	ln -sv "${prefix}/htop/htoprc" "$dest";
}

sqlite () {
	echo ">>> sqlite ..."
	dest="${HOME}/.sqliterc"
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? ([y]/n) " opt
		case $opt in
			[nN] )
				echo "mv ...";
				mv -v ${dest}{,.orig};
				;;
			* )
				echo "skip $dest";
				return;
				;;
		esac
	fi
	echo "ln ...";
	ln -sv "${prefix}/sqlite/sqliterc" "$dest";
}

tmux () {
	echo ">>> tmux ..."
	dest="${HOME}/.tmux.conf"
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? ([y]/n) " opt
		case $opt in
			[nN] )
				echo "mv ...";
				mv -v ${dest}{,.orig};
				;;
			* )
				echo "skip $dest";
				return;
				;;
		esac
	fi
	echo "ln ...";
	ln -sv "${prefix}/tmux/tmux.conf" "$dest";
}

valgrind () {
	echo ">>> valgrind ..."
	dest="${HOME}/.valgrindrc"
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? ([y]/n) " opt
		case $opt in
			[nN] )
				echo "mv ...";
				mv -v ${dest}{,.orig};
				;;
			* )
				echo "skip $dest";
				return;
				;;
		esac
	fi
	echo "ln ...";
	ln -sv "${prefix}/valgrind/valgrindrc" "$dest";
}

zsh () {
	echo ">>> zsh ..."
	dest="${HOME}/.zshrc"
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? ([y]/n) " opt
		case $opt in
			[nN] )
				echo "mv ...";
				mv -v ${dest}{,.orig};
				;;
			* )
				echo "skip $dest";
				return;
				;;
		esac
	fi
	echo "ln ...";
	ln -sv "${prefix}/zsh/zshrc" "$dest";
}

vimrc () {
	echo ">>> vim ..."
	dest="${HOME}/.vimrc"
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? ([y]/n) " opt
		case $opt in
			[nN] )
				echo "mv ...";
				mv -v ${dest}{,.orig};
				;;
			* )
				echo "skip $dest";
				return;
				;;
		esac
	fi
	echo "ln ...";
	ln -sv "${prefix}/vim/vimrc" "$dest";
}

vim () {
	vimrc
	echo ">>> vim directory..."
	mkdir -pv "${HOME}/.vim/backup";
	mkdir -pv "${HOME}/.vim/undo";
	dest="${HOME}/.vim/templates"
	if [[ -d $dest ]]; then
		read -p "'$dest' is existed. skip? ([y]/n) " opt
		case $opt in
			[nN] )
				echo "mv ...";
				mv -v ${dest}{,.orig};
				;;
			* )
				echo "skip $dest";
				return;
				;;
		esac
	fi
	echo "ln ...";
	ln -sv "${prefix}/vim/templates" "$dest";
}

aria2 () {
	echo ">>> aria2 ..."
	mkdir -pv "${HOME}/.aria2";
	touch "${HOME}/.aria2/aria2.session"
	dest="${HOME}/.aria2/aria2.conf"
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? ([y]/n) " opt
		case $opt in
			[nN] )
				echo "mv ...";
				mv -v ${dest}{,.orig};
				;;
			* )
				echo "skip $dest";
				return;
				;;
		esac
	fi
	echo "ln ...";
	ln -sv "${prefix}/aria2/aria2.conf" "$dest";
}

ssh () {
	echo ">>> ssh config ..."
	mkdir -pv "${HOME}/.ssh";
	dest="${HOME}/.ssh/config"
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? ([y]/n) " opt
		case $opt in
			[nN] )
				echo "mv ...";
				mv -v ${dest}{,.orig};
				;;
			* )
				echo "skip $dest";
				return;
				;;
		esac
	fi
	echo "ln ...";
	ln -sv "${prefix}/ssh/config" "$dest";
}

pip () {
	echo ">>> pip ..."
	mkdir -pv "${HOME}/.pip";
	dest="${HOME}/.pip/pip.conf"
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? ([y]/n) " opt
		case $opt in
			[nN] )
				echo "mv ...";
				mv -v ${dest}{,.orig};
				;;
			* )
				echo "skip $dest";
				return;
				;;
		esac
	fi
	echo "ln ...";
	ln -sv "${prefix}/pip/pip.conf" "$dest";
}



aria2
bashrc
fontconfig
git
htop
pip
sqlite
ssh
tmux
valgrind
vim
zsh
