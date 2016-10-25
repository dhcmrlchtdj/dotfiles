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

set nomodeline "忽略 打开的文件 里的vim参数
set noerrorbells "禁止错误信息响铃
set novisualbell "禁止出错屏幕闪烁
nmap Q <Nop>

set mouse="" "鼠标支持
set display=lastline,uhex "不可见字符用 hex 形式展示
set lazyredraw
set clipboard=unnamed,unnamedplus "剪贴板
set virtualedit=block "虚空间
set backspace=indent,eol,start "insert模式下删除键可删除
set showmatch "输入括号时显示匹配括号
set completeopt=menu "补全窗口的样式
set conceallevel=0

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
set wrap "自动换行
set nowrap "不自动换行
set textwidth=0 "行宽
set colorcolumn=80 "行宽提示
" set cursorline "高亮当前行
noremap <Up> gk
noremap <Down> gj
inoremap <Up> <C-o>gk
inoremap <Down> <C-o>gj

set cmdheight=1 "命令行行数
set showcmd "在命令行显示目前执行的指令
set history=10000 "命令行历史纪录
set wildmenu "命令行补全提示
set wildmode=longest:full,full "补全方式

set laststatus=2 "总是显示状态行
set noshowmode "隐藏信息
set shortmess=atI "状态行信息
" set statusline=%<%F\ %y\ (%{&ff})\ %h%m%r%w%=%-14.(%l,%c%)%p%% "状态行

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
set expandtab "使用空格缩进
set noexpandtab "使用tab缩进
set tabstop=4 "制表符\t的宽度
set softtabstop=4 "tab键的宽度
set shiftwidth=4 "空格缩进时宽度
set shiftround
set smarttab "智能缩进
set smartindent "智能选择缩进方式
set cindent
set list "显示特殊字符
set listchars=tab:»\ ,trail:·, "字符样式

""" fold
set nofoldenable "关闭折叠
set foldmethod=indent "折叠方式
set foldlevel=100 "打开小于100层的折叠
set foldcolumn=1
" 选定后用空格创建折叠 用于marker
" vmap <silent> <Space> zf

""" split
set nosplitbelow
set splitright

""" location list
nmap <silent> <F1> :silent! lopen<CR>
autocmd FileType qf nmap <buffer> <CR> <CR>:lclose<CR>
autocmd FileType qf nmap <buffer> q :q<CR>


let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'


""" plugin
let g:dein#types#git#clone_depth = 1
set runtimepath+=~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim/
call dein#begin(expand("~/.config/nvim/bundle/"))
call dein#add("Shougo/dein.vim")

" theme
call dein#add("vim-airline/vim-airline") " statusline
call dein#add("vim-airline/vim-airline-themes") " statusline theme
call dein#add("tpope/vim-fugitive") " statusline git
call dein#add("airblade/vim-gitgutter") " git status
call dein#add("altercation/vim-colors-solarized") "colorscheme
call dein#add("nathanaelkane/vim-indent-guides") "indent

" navigation
call dein#add("jeetsukumaran/vim-buffergator") " buffer
call dein#add("scrooloose/nerdtree") " filesystem
call dein#add("Xuyuanp/nerdtree-git-plugin") " filesystem git
call dein#add("sjl/gundo.vim") " undo

call dein#add("scrooloose/nerdcommenter") " comment
call dein#add("godlygeek/tabular") " align
call dein#add("scrooloose/syntastic") " syntax check
call dein#add("Shougo/denite.nvim")

" complete
call dein#add("Shougo/deoplete.nvim") " complete
call dein#add("Shougo/neosnippet.vim") " snippet
call dein#add("Shougo/neosnippet-snippets") " snippet

" language
call dein#add("zchee/deoplete-jedi") " py
call dein#add("carlitux/deoplete-ternjs") " js, require tern
" call dein#add("Rip-Rip/clang_complete") " c, require clang

"
call dein#add("sheerun/vim-polyglot") " syntax/indent
call dein#add("Chiel92/vim-autoformat") " formatter

call dein#end()

if dein#check_install()
	call dein#install()
endif

""" 插件设置
filetype plugin indent on "载入文件类型 插件 缩进
syntax enable "语法加亮
autocmd BufRead,BufNewFile *.vue set ft=html
autocmd FileType html,css,javascript,scss,json setl et
autocmd FileType markdown setl omnifunc=""
autocmd FileType scheme setl et ts=2 sts=2 sw=2
let g:jsx_ext_required = 1
let python_highlight_all = 1

set background=dark "深色背景
set background=light "浅色背景
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
let g:solarized_visibility = "low"
colorscheme solarized

highlight clear SignColumn
highlight link SignColumn CursorColumn

" indent guide
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ["help", "nerdtree", "unite"]
let g:indent_guides_default_mapping = 0

" vim-buffergator
let g:buffergator_split_size = 30
nmap <silent> <F2> :BuffergatorOpen<CR>

" nerd tree
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeChDirMode = 2
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeSortHiddenFirst = 1
let g:NERDTreeIgnore = ["\.swp$"]
nmap <silent> <F3> :silent! NERDTreeFind<CR>

" nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
			\ "Modified"  : "M",
			\ "Staged"    : "S",
			\ "Untracked" : "U",
			\ "Renamed"   : "R",
			\ "Unmerged"  : "N",
			\ "Deleted"   : "D",
			\ "Dirty"     : "*",
			\ "Clean"     : "C",
			\ "Unknown"   : "?"
			\ }

" gundo
let g:gundo_prefer_python3 = 1
let g:gundo_width = 40
let g:gundo_preview_height = 10
let g:gundo_help = 0
let g:gundo_close_on_revert = 0
let g:gundo_return_on_revert = 0
nmap <silent> <F5> :silent! GundoToggle<CR>

" nerd comment
let g:NERDSpaceDelims = 1

" syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_error_symbol = "✖"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_error_symbol = "✖"
let g:syntastic_style_warning_symbol = "⚠"
let g:syntastic_html_checkers = []
let g:syntastic_javascript_checkers = ["eslint"]
" let g:syntastic_lua_checkers = ["luac", "luacheck"]
let g:syntastic_python_python_exec = "/usr/local/bin/python3"
let g:syntastic_python_flake8_args='--ignore=E501,E701'
nmap <F4> :SyntasticToggleMode<CR>

" airline
let g:airline_theme="powerlineish"
let g:airline_left_sep = ""
let g:airline_right_sep = ""
let g:airline_symbols = { "linenr": "¶", "paste": "ρ", "branch": "⎇", "whitespace": "Ξ"}
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0

" git gutter
let g:gitgutter_sign_added = "+"
let g:gitgutter_sign_modified = "~"
let g:gitgutter_sign_removed = "-"
let g:gitgutter_sign_modified_removed = "!"
highlight link GitGutterAdd CursorColumn
highlight link GitGutterChange CursorColumn
highlight link GitGutterDelete CursorColumn
highlight link GitGutterChangeDelete CursorColumn

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1
imap <C-k> <Plug>(neosnippet_expand_or_jump)
imap <expr> <Tab>
			\ pumvisible() ? "\<C-n>" :
			\ neosnippet#expandable_or_jumpable() ?
			\ "\<Plug>(neosnippet_expand_or_jump)" : "\<Tab>"

" denite
call denite#custom#var("file_rec", "command", ["rg", "--files"])
call denite#custom#var("grep", "command", ["rg"])
call denite#custom#var("grep", "recursive_opts", [])
call denite#custom#var("grep", "final_opts", [])
call denite#custom#var("grep", "separator", ["--"])
call denite#custom#var("grep", "default_opts", ["--vimgrep", "--no-heading"])
nmap <C-p> :Denite buffer file_rec<CR>
nmap <C-p><C-p> :Denite grep:.<CR>

" autoformat
noremap <Leader>ff :Autoformat<CR>


""" 模板
augroup templates
	autocmd BufNewFile * silent! execute "0r ~/.config/nvim/templates/skeleton.".expand("<afile>:e")
augroup END


""" 其他
" 调整文件
nmap <silent> <F6> :call FormatFile()<CR>
function! FormatFile()
	let l = line(".")
	let c = col(".")

	" 调整缩进
	if (&ft !~ "python\|markdown\|text")
		exe "normal gg=G``"
	endif
	exe "silent! :retab"

	" 使用\n换行
	let &ff = "unix"

	" 使用utf-8编码
	let &fenc = "utf8"

	" 去除 BOM
	exe "set nobomb"

	" delete <0d>
	exe "silent! :%s/\r//g"

	" 删除行尾空格
	exe "silent! :%s/\s\+$//g"

	" 删除末尾空行
	let lnum = line("$")
	while lnum
		if !empty(getline(lnum))
			if lnum != line("$")
				exe "normal ".(lnum+1)."ggdG"
			endif
			break
		endif
		let lnum -= 1
	endwhile

	call cursor(l, c)
	exe "normal zz"
endfunction
