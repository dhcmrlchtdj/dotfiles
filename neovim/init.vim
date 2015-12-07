"                                ___           ___           ___
"      ___                      /\  \         /\  \         /\__\
"     /\  \        ___         |::\  \       /::\  \       /:/  /
"     \:\  \      /\__\        |:|:\  \     /:/\:\__\     /:/  /
"      \:\  \    /:/__/      __|:|\:\  \   /:/ /:/  /    /:/  /  ___
"  ___  \:\__\  /::\  \     /::::|_\:\__\ /:/_/:/__/___ /:/__/  /\__\
" /\  \ |:|  |  \/\:\  \__  \:\~~\  \/__/ \:\/:::::/  / \:\  \ /:/  /
" \:\  \|:|  |   ~~\:\/\__\  \:\  \        \::/~~/~~~~   \:\  /:/  /
"  \:\__|:|__|      \::/  /   \:\  \        \:\~~\        \:\/:/  /
"   \::::/__/       /:/  /     \:\__\        \:\__\        \::/  /
"    ~~~~           \/__/       \/__/         \/__/         \/__/

set modelines=0 "忽略 打开的文件 里的vim参数
set autoread "macvim
set guifont=Monaco:h14 "macvim
set ambiwidth=single

set noerrorbells "禁止错误信息响铃
set novisualbell "禁止出错屏幕闪烁
set display=lastline,uhex

set mouse="" "鼠标支持
set lazyredraw
set clipboard=unnamed,unnamedplus "剪贴板
set virtualedit=block "虚空间
set backspace=indent,eol,start "insert模式下删除键可删除
set showmatch "输入括号时显示匹配括号
set completeopt=menu "补全窗口的样式
"set autochdir "进入文件目录
set conceallevel=2
set concealcursor=i

""" 备份 撤销
set hidden "自动保存?
set undofile "开启撤销历史
set undodir=~/.config/nvim/undo "存放地址
set backup "覆盖文件时备份
set backupdir=~/.config/nvim/backup "存放地址
set diffopt+=filler,context:3,vertical

""" encoding
set encoding=utf-8 "vim内部使用的编码
set fileencoding=utf-8 "默认使用编码
set fileencodings=ucs-bom,utf-8,big5,gb18030 "判断文件编码
set nobomb "去除BOM
set fileformat=unix "默认换行方式
set fileformats=unix,dos "判断换行方式
set ambiwidth=single "宽度不明字符使用单倍字符宽度

""" 行号 命令行 状态行
set number "显示行号
set nowrap "不自动换行
"set wrap "自动换行
set textwidth=0 "行宽
set colorcolumn=80 "行宽提示
set cursorline "高亮当前行
"set scrolljump=-50 "翻页
noremap <buffer> <silent> <Up> gk
noremap <buffer> <silent> <Down> gj
inoremap <buffer> <silent> <Up> <C-o>gk
inoremap <buffer> <silent> <Down> <C-o>gj

set cmdheight=1 "命令行行数
set showcmd "在命令行显示目前执行的指令
set history=1000 "命令行历史纪录
set wildmenu "命令行补全提示
set wildmode=longest:full,full "补全方式

set laststatus=2 "总是显示状态行
set noshowmode "隐藏信息
set shortmess=atI "状态行信息
"set statusline=%<%F\ %y\ (%{&ff})\ %h%m%r%w%=%-14.(%l,%c%)%p%% "状态行


""" search
"清除高亮
nmap <silent> <Space> :nohlsearch<CR>
set ignorecase "搜索时忽略大小写
set smartcase "有大写时对大小写敏感
set hlsearch "高亮显示搜索结果
set incsearch "搜索时逐字符高亮
nmap n nzzzv
nmap N Nzzzv

""" indent
set noexpandtab "使用tab缩进
set expandtab "使用空格缩进
set tabstop=4 "制表符\t的宽度
set softtabstop=4 "tab键的宽度
set shiftwidth=4 "空格缩进时宽度
set shiftround
set smarttab "智能缩进
set smartindent "智能选择缩进方式
set cindent
set list "显示特殊字符
set listchars=tab:»\ ,eol:\ ,trail:·, "字符样式

""" fold
set foldmethod=indent "折叠方式
set nofoldenable "关闭折叠
set foldlevel=10 "打开小于10层的折叠
set foldcolumn=1
" 选定后用空格创建折叠 用于marker
"vmap <silent> <Space> zf
au FileType c,cpp,css,javascript,scss setl fdm=marker | setl fmr={,}

""" split
set splitright
"set splitbelow

""" location list
nmap <silent> <F1> :silent! lopen<CR>
autocmd FileType qf nmap <buffer> <CR> <CR>:lclose<CR>
autocmd FileType qf nmap <buffer> q :q<CR>


set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.config/nvim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'bling/vim-airline'

" colorscheme
NeoBundle 'altercation/vim-colors-solarized'

call neobundle#end()
filetype plugin indent on

syntax enable "语法加亮
set background=dark "深色背景
set background=light "浅色背景
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
let g:solarized_visibility = 'low'
colorscheme solarized

let g:airline_theme="powerlineish"
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols = { 'linenr': '¶', 'paste': 'ρ', 'branch': '⎇', 'whitespace': 'Ξ'}
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0

