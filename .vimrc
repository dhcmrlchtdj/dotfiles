""""""""""""""""""""
" 基础
""""""""""""""""""""
"不兼容vi
set nocompatible

"提示信息
set shortmess=atI

"忽略 打开的文件 里的vim参数
set modelines=0

"自动重新加载外部编辑器修改过的内容
set autoread

"覆盖文件时不备份
set nobackup

"不使用交换文件
"set noswapfile

"自动保存
"set hidden

"禁止错误信息响铃及出错屏幕闪烁
set t_vb=

"禁止错误信息响铃
set noerrorbells

"禁止出错屏幕闪烁
set novisualbell

"鼠标支持
set mouse=a

"set formatoptions=qrn1

set ttyfast



""""""""""""""""""""
" 编码
""""""""""""""""""""
"vim内部使用的编码
set encoding=utf-8

"判断文件编码
set fileencodings=utf-8,gb18030

"保存新文件使用的编码
set fileencoding=utf-8

"宽度不明字符设置为双倍字符宽度
set ambiwidth=double

"设置帮助为中文
set helplang=cn



""""""""""""""""""""
" 行号/命令/状态
""""""""""""""""""""
"显示标尺
set ruler

"显示行号
set number

"在命令行显示目前执行的指令
set showcmd

"命令行行数
set cmdheight=1

"命令行历史纪录
set history=1000

"命令行补全提示
set wildmenu

"总是显示状态行
set laststatus=2

"状态行
set statusline=%<%F\ %y\ (%{&ff})\ %h%m%r%w%=%-14.(%l,%c%)%p%%



""""""""""""""""""""
" 行宽/换行
""""""""""""""""""""
"按完整单词折行
set nolinebreak

"行宽
set textwidth=80

"行宽提示
set colorcolumn=86

"不自动换行
set nowrap
"set wrap



""""""""""""""""""""
" 搜索
""""""""""""""""""""
"搜索时忽略大小写
set ignorecase

"有大写时对大小写敏感
set smartcase

"高亮显示搜索结果
set hlsearch

"搜索时逐字符高亮
set incsearch

"清除高亮
nmap <silent> <leader><space> :nohlsearch<CR>



""""""""""""""""""""
" 缩进
""""""""""""""""""""
"制表符宽度
set tabstop=4

"tab键宽度
set softtabstop=4

"空格缩进时宽度
set shiftwidth=4

"使用tab缩进/使用空格缩进
set noexpandtab
"set expandtab

"显示特殊字符
set list

"字符样式
set listchars=tab:»\ ,eol:\ ,

"智能缩进
set smarttab

"智能选择缩进方式
set smartindent

"继承前一行缩进方式
set autoindent

"调整缩进
nmap <silent> <F6> gg=G``



""""""""""""""""""""
" 折叠
""""""""""""""""""""
"默认不折叠
set nofoldenable

"折叠方式
set foldmethod=indent



""""""""""""""""""""
" 杂
""""""""""""""""""""
"补全窗口的样式
set completeopt=menu

"输入括号时显示匹配括号
set showmatch

"禁止在虚空间内操作
set virtualedit=

"允许载入文件类型 插件 缩进
filetype plugin indent on

"语法加亮
syntax on

"insert模式下用删除键进行删除
set backspace=indent,eol,start

"深色背景
set background=dark



""""""""""""""""""""
" filetype
""""""""""""""""""""
autocmd FileType htmldjango set ft=jinja
autocmd FileType html,css,jinja set ts=2 | set sts=2 | set sw=2
"autocmd FileType mkd,python,javascript set ts=4 | set sts=4 | set sw=4
"autocmd FileType make set noet
"autocmd FileType python set et

""""""""""""""""""""
" templates
""""""""""""""""""""
autocmd BufNewFile *.py 0r ~/.vim/templates/python
autocmd BufNewFile *.html 0r ~/.vim/templates/html
autocmd BufNewFile *.css 0r ~/.vim/templates/css
autocmd BufNewFile *.c 0r ~/.vim/templates/c
autocmd BufNewFile *.{cc,cpp} 0r ~/.vim/templates/cc
"autocmd BufNewFile jquery.*.js 0r ~/.vim/templates/jquery

""""""""""""""""""""
" plugin
""""""""""""""""""""
"""pathogen"""
call pathogen#infect()

"""flake8"""
autocmd BufWritePost *.py call Flake8()
"let g:flake8_ignore=""
nmap <silent> <F8> :cp<CR>
nmap <silent> <F9> :cn<CR>

"""supertab"""
let g:SuperTabDefaultCompletionType="context"
au FileType html,css,javascript let g:SuperTabDefaultCompletionType="<C-X><C-O>"

"""tagbar"""
nmap <silent> <F3> :TagbarOpen fj<CR>
let g:tagbar_width=30
let g:tagbar_sort=0

"""nerd tree"""
nmap <silent> <F4> :NERDTreeFind<CR>

