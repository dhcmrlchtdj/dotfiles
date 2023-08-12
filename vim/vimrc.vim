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

set nocompatible
set ttyfast

set nomodeline "忽略 打开的文件 里的vim参数
set belloff=all
set termguicolors
set guicursor=
set autoread
nnoremap Q <Nop>
autocmd FocusGained,BufEnter,CursorHold * checktime

" z=, [s, ]s
" set spell
set spelllang=en,cjk
set spellsuggest=best,6

set mouse= "鼠标支持
set backspace=indent,eol,start
set display=lastline,uhex "不可见字符用 hex 形式展示
set lazyredraw
set clipboard=unnamed,unnamedplus "剪贴板
set virtualedit=block "虚空间
set showmatch "输入括号时显示匹配括号
set showfulltag
set noshowmode "隐藏信息
set shortmess=atIF "状态行信息
set ttimeout
set ttimeoutlen=50
set history=10000

""" 备份 撤销
set updatetime=300
set hidden
set undofile "开启撤销历史
set backup "覆盖文件时备份
set writebackup "保存时备份
let &undodir = stdpath('data') . '/undo//'
let &backupdir = stdpath('data') . '/backup//'
let &directory = stdpath('data') . '/swap//'
set diffopt=filler,context:3,vertical,internal,indent-heuristic,algorithm:histogram

""" encoding
set fileencoding=utf-8 "默认使用编码
set fileencodings=ucs-bom,utf-8,gb18030 "判断文件编码
set nobomb "去除BOM
set fileformat=unix "默认换行方式
set fileformats=unix,dos "判断换行方式

""" 行号 命令行 状态行
set signcolumn=yes
set ruler
set laststatus=2
set showcmd
set number "显示行号
" set wrap "自动换行
set nowrap "不自动换行
set textwidth=0 "行宽
set colorcolumn=81 "行宽提示
" set cursorline "高亮当前行
set scrolloff=1
set sidescroll=1
set sidescrolloff=1
nnoremap <Up> gk
nnoremap <Down> gj
vnoremap <Up> gk
vnoremap <Down> gj
inoremap <Up> <C-o>gk
inoremap <Down> <C-o>gj

set wildmenu "命令行补全提示
set wildmode=longest:full,full "补全方式

""" search
"清除高亮
nnoremap <silent> <Space> :nohlsearch<CR>
set ignorecase "搜索时忽略大小写
set smartcase "有大写时对大小写敏感
set hlsearch "高亮显示搜索结果
set incsearch "搜索时逐字符高亮
nnoremap n nzzzv
nnoremap N Nzzzv

""" indent
set expandtab "使用空格缩进
set noexpandtab "使用tab缩进
set tabstop=4 "制表符\t的宽度
set softtabstop=4 "tab键的宽度
set shiftwidth=4 "空格缩进时宽度
set shiftround
set smarttab "智能缩进
set autoindent
set list "显示特殊字符
" set listchars=tab:»\ ,lead:•,trail:• "字符样式
set listchars=tab:»\ ,trail:• "字符样式

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

""" tabline
nnoremap <S-Right> gt
nnoremap <S-Left> gT

""" location list
autocmd FileType qf nnoremap <buffer> <silent> <CR> <CR>:lclose<CR>
autocmd FileType qf nnoremap <buffer> <silent> q :lclose<CR>

" provider
let g:loaded_python_provider = 0
let g:loaded_python3_provider = 0
let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0
let g:loaded_node_provider = 0
let g:editorconfig = v:false

""" plugin
filetype plugin indent off

call plug#begin(stdpath('data') . '/plugged')

Plug 'ojroques/vim-oscyank'
if exists("$SSH_CONNECTION")
	autocmd TextYankPost *
				\ if v:event.operator is 'y' && v:event.regname is ''
				\ | execute 'OSCYankRegister "'
				\ | endif
endif

Plug 'tpope/vim-fugitive' " statusline git
Plug 'vim-airline/vim-airline' " statusline
Plug 'vim-airline/vim-airline-themes' " statusline theme
let g:airline_theme = 'powerlineish'
let g:airline_symbols_ascii = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#coc#enabled = 1

Plug 'airblade/vim-gitgutter' " git status
let g:gitgutter_diff_base = 'HEAD'
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_modified_removed = '!'
let g:gitgutter_set_sign_backgrounds = 1

Plug 'overcache/NeoSolarized'
let g:neosolarized_italic = 1

Plug 'preservim/nerdtree'
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeChDirMode = 2
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeSortHiddenFirst = 1
let g:NERDTreeShowHidden = 1
nnoremap <F3> :NERDTreeFind<CR>

Plug 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeGitStatusIndicatorMapCustom = {}
let g:NERDTreeGitStatusIndicatorMapCustom.Modified = 'M'
let g:NERDTreeGitStatusIndicatorMapCustom.Deleted = 'D'
let g:NERDTreeGitStatusIndicatorMapCustom.Renamed = 'R'
let g:NERDTreeGitStatusIndicatorMapCustom.Unmerged = 'U'
let g:NERDTreeGitStatusIndicatorMapCustom.Staged = 'S'
let g:NERDTreeGitStatusIndicatorMapCustom.Clean = 'C'
let g:NERDTreeGitStatusIndicatorMapCustom.Ignored = 'I'
let g:NERDTreeGitStatusIndicatorMapCustom.Dirty = '*'
let g:NERDTreeGitStatusIndicatorMapCustom.Untracked = '?'
let g:NERDTreeGitStatusIndicatorMapCustom.Unknown = '?'

Plug 'liuchengxu/vista.vim'
let g:vista_blink = [0, 0]
let g:vista_top_level_blink = [0, 0]
let g:vista_echo_cursor = 0
let g:vista#renderer#enable_icon = 0
let g:vista_default_executive = 'coc'
nnoremap <F4> :Vista focus<CR>

Plug 'mbbill/undotree'
let g:undotree_SplitWith = 40
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_RelativeTimestamp = 1
let g:undotree_ShortIndicators = 1
nnoremap <F5> :UndotreeToggle<CR>

" Plug 'andymass/vim-matchup'

" Plug 'chrisbra/SudoEdit.vim'
" :w !sudo tee % > /dev/null

Plug 'preservim/nerdcommenter' " comment
let g:NERDCommentEmptyLines = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_swift = 1

Plug 'godlygeek/tabular'

Plug 'sbdchd/neoformat'
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
let g:neoformat_run_all_formatters = 1
nnoremap <Leader>ff :Neoformat<CR>
let g:neoformat_enabled_markdown = []
let g:neoformat_enabled_json = ['prettier']
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_typescript = ['prettier']
let g:neoformat_enabled_typescriptreact = ['prettier']
let g:neoformat_enabled_css = ['prettier']
let g:neoformat_enabled_html = ['prettier']
let g:neoformat_enabled_yaml = ['prettier']
let g:neoformat_enabled_ocaml = ['ocamlformat']
let g:neoformat_enabled_go = ['gofumpt']

Plug 'easymotion/vim-easymotion'
let g:EasyMotion_do_mapping = 0
nnoremap f <Plug>(easymotion-w)
nnoremap F <Plug>(easymotion-b)
vnoremap f <Plug>(easymotion-w)
vnoremap F <Plug>(easymotion-b)

Plug 'terryma/vim-expand-region'
vnoremap v <Plug>(expand_region_expand)
vnoremap V <Plug>(expand_region_shrink)

Plug 'jeetsukumaran/vim-buffergator'
let g:buffergator_split_size = 30
nnoremap <F2> :BuffergatorOpen<CR>

Plug 'plasticboy/vim-markdown'
let g:vim_markdown_conceal = 0
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_toc_autofit = 1
autocmd FileType markdown nnoremap <buffer> <F4> :Toc<CR>

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdateSync'}

" :CocInstall coc-lists
" :CocInstall coc-json
" :CocInstall coc-tsserver coc-css coc-html coc-eslint
" :CocInstall coc-syntax
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" nnoremap <Leader>l :call CocActionAsync('codeAction')<CR>
autocmd CursorHold * silent call CocActionAsync('highlight')
nnoremap <silent> [[ :call CocAction('diagnosticPrevious')<CR>zzzv
nnoremap <silent> ]] :call CocAction('diagnosticNext')<CR>zzzv
nnoremap K :call CocActionAsync('doHover')<CR>
nnoremap L :call CocAction('jumpDefinition')<CR> " <C-o>/<C-i>
" nnoremap <C-l> :call CocActionAsync('jumpReferences')<CR>
" nnoremap <C-k> :call CocAction('codeLensAction')<CR>
inoremap <silent> <expr> <BS> coc#pum#visible() ? '<BS><C-o>coc#refresh()' : '<BS>'
inoremap <silent> <expr> <CR> coc#pum#visible() ? coc#pum#confirm() : '<C-g>u<CR><C-r>=coc#on_enter()<CR>'
inoremap <silent> <expr> <TAB> coc#pum#visible() ? coc#pum#next(1) : CheckBackspace() ? '<Tab>' : coc#refresh()
inoremap <silent> <expr> <Up> coc#pum#visible() ? coc#pum#prev(1) : '<Up>'
inoremap <silent> <expr> <Down> coc#pum#visible() ? coc#pum#next(1) : '<Down>'
function! CheckBackspace() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction
" GoTo code navigation.
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)
" coc list
nnoremap <F1> :CocDiagnostics<CR>
nnoremap <Leader><F1> :CocList --auto-preview diagnostics<CR>
nnoremap <C-p> :CocList --auto-preview files<CR>
nnoremap <Leader>p :CocList --auto-preview grep -smartcase -workspace 
nnoremap <Leader>m :CocList marks<CR>
" nnoremap <Leader>a :CocList<CR>
" nnoremap <F12> :CocListResume<CR>

call plug#end()

augroup LargeFile
	let g:LargeFile = 1048576 " 1MB
	autocmd BufReadPre *
				\ let f=expand("<afile>") |
				\ if getfsize(f) > g:LargeFile |
				\ set eventignore+=FileType |
				\ else |
				\ set eventignore-=FileType |
				\ endif
augroup END

filetype plugin indent on "载入文件类型 插件 缩进
syntax enable "语法加亮

" :TSInstallSync beancount
" :TSInstallSync bash make toml
" :TSInstallSync c rust
" :TSInstallSync go gomod
" :TSInstallSync ocaml ocamllex ocaml_interface
" :TSInstallSync json html css javascript typescript
" :TSInstallSync sql
lua <<EOF
require('nvim-treesitter.configs').setup({
	sync_install = true,
	auto_install = false,
	highlight = { enable = true },
	indent = { enable = false },
	incremental_selection = { enable = false },
})
EOF

autocmd BufNewFile,BufRead *.json setlocal filetype=jsonc
autocmd BufNewFile,BufRead *.json setlocal commentstring=//%s
autocmd BufNewFile,BufRead *.bean,*.beancount setlocal filetype=beancount
autocmd BufNewFile,BufRead *.bean,*.beancount setlocal commentstring=;%s

set background=dark "深色背景
set background=light "浅色背景

colorscheme NeoSolarized
" highlight LintSign guifg=#dc322f guibg=#eee8d5
highlight SignColumn guibg=#eee8d5
highlight CocErrorSign guifg=#dc322f guibg=#eee8d5
highlight CocWarningSign guifg=#d33682 guibg=#eee8d5

" function! FormatFile()
"     " 使用\n换行
"     let &ff = 'unix'
" 
"     " 使用utf-8编码
"     let &fenc = 'utf8'
" 
"     " 去除 BOM
"     exe 'set nobomb'
" 
"     " delete <0d>
"     exe 'silent! :%s/\r/\r/g'
" endfunction
