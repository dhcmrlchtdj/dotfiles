set nocompatible "不兼容vi
set modelines=0 "忽略 打开的文件 里的vim参数
set helplang=cn "优先寻找中文帮助

set t_Co=256 "颜色数目
set t_vb='' "禁止错误信息响铃及出错屏幕闪烁
set noerrorbells "禁止错误信息响铃
set novisualbell "禁止出错屏幕闪烁
set ttyfast

set mouse=a "鼠标支持
set clipboard=unnamedplus "使用外部剪贴板
set virtualedit= "禁止在虚空间内操作
set backspace=indent,eol,start "insert模式下删除键可删除
set showmatch "输入括号时显示匹配括号
set completeopt=menu "补全窗口的样式

""" 备份 撤销
set hidden "自动保存?
set undofile "开启撤销历史
set undodir=~/.vim/_tmp/undo "存放地址
set backup "覆盖文件时备份
set backupdir=~/.vim/_tmp/backup "存放地址

""" 编码
set encoding=utf-8 "vim内部使用的编码
set fileencoding=utf-8 "默认使用编码
set fileencodings=utf-8,gb18030 "判断文件编码
set nobomb "去除BOM
set fileformat=unix "默认换行方式
set fileformats=unix,dos "判断换行方式
set ambiwidth=single "宽度不明字符使用单倍字符宽度

""" 行号 命令行 状态行
set number "显示行号
set nowrap "不自动换行
set textwidth=0 "行宽
set colorcolumn=80 "行宽提示

set cmdheight=1 "命令行行数
set showcmd "在命令行显示目前执行的指令
set history=1000 "命令行历史纪录
set wildmenu "命令行补全提示
set wildmode=longest:full,full "补全方式

set laststatus=2 "总是显示状态行
set shortmess=atI "状态行信息
"set statusline=%<%F\ %y\ (%{&ff})\ %h%m%r%w%=%-14.(%l,%c%)%p%% "状态行
set display=lastline

""" 搜索
"清除高亮
nmap <silent> <space> :nohlsearch<cr>
set ignorecase "搜索时忽略大小写
set smartcase "有大写时对大小写敏感
set hlsearch "高亮显示搜索结果
set incsearch "搜索时逐字符高亮
nmap n nzzzv
nmap N Nzzzv

""" 缩进
set noexpandtab "使用tab缩进
set tabstop=4 "制表符\t的宽度
set softtabstop=4 "tab键的宽度
set shiftwidth=4 "空格缩进时宽度
set shiftround
set smarttab "智能缩进
set smartindent "智能选择缩进方式
set autoindent "继承前一行缩进方式
set list "显示特殊字符
set listchars=tab:»\ ,eol:\ ,trail:˽, "字符样式¯

""" 折叠
set foldmethod=syntax "折叠方式
set foldenable "启用折叠
set foldlevel=20 "打开小于20层的折叠
set foldcolumn=1
" 选定后用空格创建折叠
"vmap <silent> <space> zf

""" 插件
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"common
Bundle 'gmarik/vundle'

Bundle 'ervandew/supertab'
Bundle 'Shougo/neocomplcache'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Lokaltog/vim-powerline'

Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'sjl/gundo.vim'

Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'matchit.zip'
Bundle 'Mark--Karkat'

"c/c++
Bundle 'a.vim'
Bundle 'Rip-Rip/clang_complete'

"html5
"""syntax indent complete
Bundle 'othree/html5.vim'

"javascript
"""js indent
Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'maksimr/vim-jsbeautify'

"css
Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'

"python
Bundle 'kevinw/pyflakes-vim'
Bundle 'sunsol/vim_python_fold_compact'
Bundle 'indentpython.vim--nianyang'

"rst markdown pandoc
Bundle 'RST-Tables-CJK'
Bundle 'tpope/vim-markdown'
"Bundle 'vim-pandoc/vim-pandoc'

"colorscheme
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/base16-vim'

""" 载入插件 高亮
filetype plugin indent on "载入文件类型 插件 缩进
syntax enable "语法加亮
set background=dark "深色背景
set background=light "浅色背景

let g:solarized_termcolors=256
let g:solarized_visibility='low'
let g:solarized_termtrans=1
colorscheme solarized
"let base16colorspace=256
"colorscheme base16-solarized

""" 插件设置
"supertab
let g:SuperTabDefaultCompletionType="context"
au FileType html,css,javascript let g:SuperTabDefaultCompletionType="<C-X><C-O>"

"neocomplcache
let g:neocomplcache_enable_at_startup=1

"nerd tree
nmap <silent> <F3> :NERDTreeFind<cr>

"tagbar
nmap <silent> <F4> :TagbarOpen fj<cr>
let g:tagbar_width=35
let g:tagbar_foldlevel=1

"jsbeautify
let g:jsbeautify_engine='d8'
let g:jsbeautify={'indent_size':1,'indent_char':'\t','max_char':86}
let g:cssbeautify={'indent_size':1,'indent_char':'\t','max_char':86}
let g:htmlbeautify={'indent_size':1,'indent_char':'\t'}
au FileType html nmap <silent> <leader>ff :call HtmlBeautify()<cr>
au FileType css nmap <silent> <leader>ff :call CSSBeautify()<cr>
au FileType javascript nmap <silent> <leader>ff :call JsBeautify()<cr>

"indent guide
let g:indent_guides_auto_colors=0
au VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=lightgrey
au VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=lightgrey
let g:indent_guides_guide_size=1
"let g:indent_guides_enable_on_vim_startup=1

"powerline
let g:Powerline_symbols='unicode'

"gundo
nmap <silent> <F5> :GundoToggle<cr>
"let g:gundo_right=1

""" 文件类型设置
autocmd FileType htmldjango set ft=jinja
autocmd FileType python set nosi "| set fdc=3
autocmd BufRead *.py norm \ig
autocmd FileType c,cpp nmap <leader>a :A<cr>

""" 模板
autocmd BufNewFile *.py 0r ~/.vim/templates/python
autocmd BufNewFile *.html 0r ~/.vim/templates/html
autocmd BufNewFile .gitignore 0r ~/.vim/templates/gitignore
"autocmd BufNewFile *.css 0r ~/.vim/templates/css
"autocmd BufNewFile *.c 0r ~/.vim/templates/c
"autocmd BufNewFile *.cpp 0r ~/.vim/templates/cpp

""" 快捷键
" 窗口移动
nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l

""" 特殊
" 调整文件
nmap <silent> <F6> :call ReStructureFile()<cr>
function! ReStructureFile()
	" 调整缩进
	"if (&ft != 'python') && (&ft != 'pandoc')
		"exe 'normal gg=G``'
	"endif
	" 使用\n换行
	let &ff = 'unix'
	let &fenc = 'utf8'
	exe 'silent! :retab'
	" 删除行尾空格
	exe 'silent! :%s/\s\+$//g'
	" 删除末尾空行
	let lnum = line('$')
	while lnum
		if !empty(getline(lnum))
			if lnum != line('$')
				exe 'normal '.(lnum+1).'ggdG'
			endif
			break
		endif
		let lnum -= 1
	endwhile
	echo 'Done.'
endfunction

" 退出输入模式时关闭fcitx
"autocmd InsertLeave * let b:fcitx=system('fcitx-remote -c')
