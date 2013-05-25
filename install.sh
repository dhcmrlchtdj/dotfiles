#!/usr/bin/env sh

prefix=`pwd`

bashrc () {
	echo ">>> bashrc ..."
	dest=~/.bashrc
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? [y/n] " opt
		case $opt in
			[nN] ) mv -v ${dest}{,.orig};;
			* ) echo "skip $dest"; return;;
		esac
	fi
	ln -sv ${prefix}/bash/bashrc ${dest};
}

git () {
	echo ">>> git ..."
	dest=~/.gitconfig
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? [y/n] " opt
		case $opt in
			[nN] ) mv -v ${dest}{,.orig};;
			* ) echo "skip $dest"; return;;
		esac
	fi
	ln -sv ${prefix}/git/gitconfig ${dest};
}

fontconfig () {
	echo ">>> fontconfig ..."
	dest=~/.config/fontconfig/fonts.conf
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? [y/n] " opt
		case $opt in
			[nN] ) mv -v ${dest}{,.orig};;
			* ) echo "skip $dest"; return;;
		esac
	fi
	ln -sv ${prefix}/fontconfig/fonts.conf ${dest};
}

htop () {
	echo ">>> htop ..."
	dest=~/.config/htop/htoprc
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? [y/n] " opt
		case $opt in
			[nN] ) mv -v ${dest}{,.orig};;
			* ) echo "skip $dest"; return;;
		esac
	fi
	ln -sv ${prefix}/htop/htoprc ${dest};
}

sqlite () {
	echo ">>> sqlite ..."
	dest=~/.sqliterc
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? [y/n] " opt
		case $opt in
			[nN] ) mv -v ${dest}{,.orig};;
			* ) echo "skip $dest"; return;;
		esac
	fi
	ln -sv ${prefix}/sqlite/sqliterc ${dest};
}

tmux () {
	echo ">>> tmux ..."
	dest=~/.tmux.conf
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? [y/n] " opt
		case $opt in
			[nN] ) mv -v ${dest}{,.orig};;
			* ) echo "skip $dest"; return;;
		esac
	fi
	ln -sv ${prefix}/tmux/tmux.conf ${dest};
}

valgrind () {
	echo ">>> valgrind ..."
	dest=~/.valgrindrc
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? [y/n] " opt
		case $opt in
			[nN] ) mv -v ${dest}{,.orig};;
			* ) echo "skip $dest"; return;;
		esac
	fi
	ln -sv ${prefix}/valgrind/valgrindrc ${dest};
}

zsh () {
	echo ">>> zsh ..."
	dest=~/.zshrc
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? [y/n] " opt
		case $opt in
			[nN] ) mv -v ${dest}{,.orig};;
			* ) echo "skip $dest"; return;;
		esac
	fi
	ln -sv ${prefix}/zsh/zshrc ${dest};
}

vimrc () {
	echo ">>> vim ..."
	dest=~/.vimrc
	if [[ -e $dest ]]; then
		read -p "'$dest' is existed. skip? [y/n] " opt
		case $opt in
			[nN] ) mv -v ${dest}{,.orig};;
			* ) echo "skip $dest"; return;;
		esac
	fi
	ln -sv ${prefix}/vim/vimrc ${dest};
}

vim () {
	vimrc

	if [[ -d ~/.vim/backup ]]; then mkdir -pv ~/.vim/backup; fi
	if [[ -d ~/.vim/undo ]]; then mkdir -pv ~/.vim/undo; fi

	dest=~/.vim/templates
	if [[ -d $dest ]]; then
		read -p "'$dest' is existed. skip? [y/n] " opt
		case $opt in
			[nN] ) mv -v ${dest}{,.orig};;
			* ) echo "skip $dest"; return;;
		esac
	fi
	ln -sv ${prefix}/vim/templates ${dest};
}


bashrc
fontconfig
git
htop
sqlite
tmux
valgrind
zsh
vim
