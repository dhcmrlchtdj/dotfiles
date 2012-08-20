set nocompatible "不兼容vi
set shortmess=atI "提示信息设置
set modelines=0 "忽略 打开的文件 里的vim参数
set nobackup "覆盖文件时不备份
set hidden "自动保存?
set helplang=cn "优先寻找中文帮助

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

set undofile "开启撤销历史
set undodir=~/.vim/undo "存放地址

""" 编码
set encoding=utf-8 "vim内部使用的编码
set fileencoding=utf-8 "默认使用编码
set fileencodings=utf-8,gb18030 "判断文件编码
set nobomb "去除BOM
set fileformat=unix "默认换行方式
set fileformats=unix,dos "判断换行方式
set ambiwidth=double "宽度不明字符设置为双倍字符宽度

""" 行号 命令行 状态行 换行
set number "显示行号
set cmdheight=1 "命令行行数
set showcmd "在命令行显示目前执行的指令
set history=1000 "命令行历史纪录
set wildmenu "命令行补全提示
set wildmode=longest:full,full "补全方式
set laststatus=2 "总是显示状态行
set statusline=%<%F\ %y\ (%{&ff})\ %h%m%r%w%=%-14.(%l,%c%)%p%% "状态行
set nowrap "不自动换行
set textwidth=0 "行宽
set colorcolumn=80 "行宽提示

""" 搜索
"清除高亮
nmap <silent> <space> :nohlsearch<cr>
set ignorecase "搜索时忽略大小写
set smartcase "有大写时对大小写敏感
set hlsearch "高亮显示搜索结果
set incsearch "搜索时逐字符高亮

""" 缩进
"调整缩进 使用\n换行 删除行尾空格
nmap <silent> <F6> gg=G``:set ff=unix<cr>:%s/\s\+$//g<cr>
set tabstop=4 "制表符宽度
set softtabstop=4 "tab键宽度
set shiftwidth=4 "空格缩进时宽度
set noexpandtab "使用tab缩进
set smarttab "智能缩进
set smartindent "智能选择缩进方式
set autoindent "继承前一行缩进方式
set list "显示特殊字符
set listchars=tab:»\ ,eol:\ ,trail:¯, "字符样式

""" 折叠
set foldenable "开启折叠
set foldmethod=manual "折叠方式
set foldcolumn=1
" 选定后用空格创建折叠
vmap <silent> <space> zf

""" 插件
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'matchit.zip'
Bundle 'Mark--Karkat'
"c/c++
Bundle 'Rip-Rip/clang_complete'
"html5
Bundle 'othree/html5.vim'
"javascript
Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'
"css
Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
"python
Bundle 'kevinw/pyflakes-vim'
"rst
Bundle 'RST-Tables-CJK'
"pandoc
Bundle 'vim-pandoc/vim-pandoc'
"(non git)
set rtp+=~/.vim/bundle/non-git/

""" 载入插件 高亮
filetype plugin indent on "载入文件类型 插件 缩进
syntax enable "语法加亮
"set background=light "浅色背景
set background=dark "深色背景

""" 插件设置
" super tab
let g:SuperTabDefaultCompletionType="context"
au FileType html,css,javascript let g:SuperTabDefaultCompletionType="<C-X><C-O>"

"tagbar
nmap <silent> <F3> :TagbarOpen fj<cr>
let g:tagbar_width=30
let g:tagbar_foldlevel=1

"nerd tree
nmap <silent> <F4> :NERDTreeFind<cr>

"jsbeautify
let g:jsbeautify_engine='d8'
let g:jsbeautify={'indent_size':1,'indent_char':'\t','max_char':86}
let g:cssbeautify={'indent_size':1,'indent_char':'\t','max_char':86}
let g:htmlbeautify={'indent_size':1,'indent_char':'\t'}
au FileType html nmap <silent> <leader>ff :call HtmlBeautify()<cr>
au FileType css nmap <silent> <leader>ff :call CSSBeautify()<cr>
au FileType javascript nmap <silent> <leader>ff :call JsBeautify()<cr>

""" 文件类型设置
autocmd FileType htmldjango set ft=jinja
"autocmd FileType html,css,jinja set ts=2 | set sts=2 | set sw=2
"autocmd FileType mkd,python,javascript set ts=4 | set sts=4 | set sw=4
"autocmd FileType python set noet
"autocmd FileType python set et

""" 模板
autocmd BufNewFile *.py 0r ~/.vim/templates/python
autocmd BufNewFile *.html 0r ~/.vim/templates/html
autocmd BufNewFile *.css 0r ~/.vim/templates/css
autocmd BufNewFile *.c 0r ~/.vim/templates/c
autocmd BufNewFile *.cc 0r ~/.vim/templates/cc
