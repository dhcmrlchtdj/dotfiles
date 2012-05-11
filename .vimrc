set nocompatible "不兼容vi
set shortmess=atI "提示信息

set encoding=utf-8 "vim内部使用的编码
set fileencodings=utf-8,gb18030 "判断文件编码
set fileencoding=utf-8 "保存新文件使用的编码
set ambiwidth=double "宽度不明字符设置为双倍字符宽度
"set helplang=cn "设置帮助为中文

set autoread "自动重新加载外部编辑器修改过的内容
set nobackup "覆盖文件时不备份

"set noswapfile "不使用交换文件
set virtualedit= "禁止在虚空间内操作

if has('mouse')
    set mouse=a "鼠标支持
endif
"set nolinebreak "按完整单词折行
"set textwidth=79 "行宽
"set wrap "自动换行
set nowrap "不自动换行
set showmatch "输入括号时显示匹配括号
set ruler "显示标尺
set number "显示行号
set cmdheight=1 "命令行行数
set history=1000 "命令行历史纪录
set showcmd "在状态栏显示目前执行的指令
set laststatus=2 "总是显示状态行
set statusline=%<%F\ %y\ (%{&ff})\ %h%m%r%w%=%-14.(%l,%c%V%)%p%% "状态行

set t_vb= "禁止错误信息响铃及出错屏幕闪烁
set noerrorbells "禁止错误信息响铃
set novisualbell "禁止出错屏幕闪烁

set ignorecase "搜索时忽略大小写
set smartcase "有大写时对大小写敏感
set hlsearch "高亮显示搜索结果
set incsearch "搜索时逐字符高亮
"清除高亮 \q
"nmap <silent> <leader>q :nohlsearch<CR>
nmap <silent> <leader>q /dhcmrlchtdj<CR>

set tabstop=2 "制表符宽度
set softtabstop=2 "tab宽度
set shiftwidth=2 "缩进空格数
set expandtab "用空格替代制表符
set smarttab "智能缩进
set smartindent "智能选择缩进方式
set autoindent "继承前一行缩进方式
set backspace=indent,eol,start "insert模式下用删除键进行删除

set foldmethod=indent "折叠方式
set nofoldenable "默认不折叠

set completeopt=menu

filetype plugin indent on "允许载入文件类型 插件 缩进
syntax on "语法加亮
set background=dark


""""""""""""""""""""""""""""""
" filetype
""""""""""""""""""""""""""""""

autocmd FileType make set noet
autocmd FileType mkd,python,javascript set ts=4 | set sts=4 | set sw=4
"autocmd FileType html,jinja,css set ts=2 | set sts=2 | set sw=2
autocmd BufNewFile,BufRead *.md set filetype=mkd

"""templates"""
autocmd BufNewFile *.py 0r ~/.vim/templates/python
autocmd BufNewFile *.html 0r ~/.vim/templates/html
autocmd BufNewFile *.css 0r ~/.vim/templates/css
autocmd BufNewFile jquery.*.js 0r ~/.vim/templates/jquery


""""""""""""""""""""""""""""""
" plugin
""""""""""""""""""""""""""""""

"""supertab"""
let g:SuperTabDefaultCompletionType="context"
"let g:SuperTabContextDefaultCompletionType="<C-P>"
autocmd FileType html,css,js let g:SuperTabDefaultCompletionType="<C-X><C-O>"

"""tagbar"""
nmap <silent> <F3> :TagbarOpen fj<CR>
let g:tagbar_width=30
let g:tagbar_sort=0

"""nerd tree"""
nmap <silent> <F4> :NERDTreeToggle<CR>

