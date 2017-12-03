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

set belloff=all
set nomodeline "忽略 打开的文件 里的vim参数
set termguicolors
set guicursor=
nmap Q <Nop>

if has('nvim') == 0
    set nocompatible "不兼容vi
    set ttyfast
    set t_Co=256 "颜色数目
    set cryptmethod=blowfish2
endif

set autoread "外部编辑器修改文件
autocmd FocusGained,BufEnter,CursorHold * checktime

set mouse= "鼠标支持
set display=lastline,uhex "不可见字符用 hex 形式展示
set lazyredraw
set clipboard=unnamed,unnamedplus "剪贴板
set virtualedit=block "虚空间
set backspace=indent,eol,start "insert模式下删除键可删除
set showmatch "输入括号时显示匹配括号
set completeopt=menu "补全窗口的样式
set showfulltag
set conceallevel=0

""" 备份 撤销
set hidden "自动保存?
set directory=~/.config/nvim/swap//
set undofile "开启撤销历史
set undodir=~/.config/nvim/undo
set backup "覆盖文件时备份
set backupdir=~/.config/nvim/backup
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
set colorcolumn=81 "行宽提示
" set cursorline "高亮当前行
set scrolloff=3
set sidescroll=1
set sidescrolloff=3
noremap <Up> gk
noremap <Down> gj
inoremap <Up> <C-o>gk
inoremap <Down> <C-o>gj
inoremap <expr> <Up> pumvisible() ? '<C-p>' : '<Up>'
inoremap <expr> <Down> pumvisible() ? '<C-n>' : '<Down>'

set cmdheight=1 "命令行行数
set showcmd "在命令行显示目前执行的指令
set history=10000 "命令行历史纪录
set wildmenu "命令行补全提示
set wildmode=longest:full,full "补全方式

set laststatus=2 "总是显示状态行
set noshowmode "隐藏信息
set shortmess=atIF "状态行信息
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

""" location list
nmap <silent> <F1> :silent lopen<CR>
autocmd FileType qf nmap <buffer> <CR> <CR>:lclose<CR>
autocmd FileType qf nmap <buffer> q :q<CR>

""" plugin
filetype plugin indent off
let g:dein#types#git#clone_depth = 1
set runtimepath+=~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim/
if has('nvim')
    call dein#begin(expand('~/.config/nvim/bundle'))
else
    call dein#begin(expand('~/.vim/bundle'))
endif
call dein#add('Shougo/dein.vim')

call dein#add('tpope/vim-fugitive') " statusline git
call dein#add('vim-airline/vim-airline') " statusline
call dein#add('vim-airline/vim-airline-themes') " statusline theme
let g:airline_theme = 'powerlineish'
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0

call dein#add('airblade/vim-gitgutter') " git status
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_modified_removed = '!'
let g:gitgutter_diff_args = 'HEAD'

call dein#add('jamessan/vim-gnupg') " gpg

call dein#add('icymind/NeoSolarized') " colorscheme

call dein#add('nathanaelkane/vim-indent-guides') " indent
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'tagbar']

call dein#add('jeetsukumaran/vim-buffergator') " buffer
let g:buffergator_split_size = 30
nmap <silent> <F2> :silent BuffergatorOpen<CR>

call dein#add('kshenoy/vim-signature')

call dein#add('scrooloose/nerdtree') " filesystem
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeChDirMode = 2
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeSortHiddenFirst = 1
nmap <silent> <F3> :silent NERDTreeFind<CR>

call dein#add('Xuyuanp/nerdtree-git-plugin') " filesystem git
let g:NERDTreeIndicatorMapCustom = {}
let g:NERDTreeIndicatorMapCustom.Modified = 'M'
let g:NERDTreeIndicatorMapCustom.Deleted = 'D'
let g:NERDTreeIndicatorMapCustom.Renamed = 'R'
let g:NERDTreeIndicatorMapCustom.Unmerged = 'U'
let g:NERDTreeIndicatorMapCustom.Staged = 'S'
let g:NERDTreeIndicatorMapCustom.Clean = 'C'
let g:NERDTreeIndicatorMapCustom.Ignored = 'I'
let g:NERDTreeIndicatorMapCustom.Dirty = '*'
let g:NERDTreeIndicatorMapCustom.Untracked = '?'
let g:NERDTreeIndicatorMapCustom.Unknown = '?'

call dein#add('sjl/gundo.vim') " undo
let g:gundo_prefer_python3 = 1
let g:gundo_width = 40
let g:gundo_preview_height = 10
let g:gundo_help = 0
let g:gundo_close_on_revert = 0
let g:gundo_return_on_revert = 0
nmap <silent> <F5> :silent GundoToggle<CR>

call dein#add('majutsushi/tagbar') " tagbar, require ctags
nmap <silent> <F4> :silent TagbarOpen fj<CR>

call dein#add('scrooloose/nerdcommenter') " comment
let g:NERDSpaceDelims = 1

call dein#add('godlygeek/tabular') " align

call dein#add('w0rp/ale')
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '•'
let g:ale_linters = {}
let g:ale_linters.html = []
let g:ale_linters.javascript = ['eslint']
let g:ale_linters.typescript = ['tsserver', 'tslint']
let g:ale_linters.python = ['flake8']
let g:ale_lint_on_insert_leave = 1
let g:ale_echo_msg_format = '%linter% | %severity% | %s'
let g:ale_fixers = {}
let g:ale_completion_enabled = 0
let g:ale_pattern_options = {'\.ml[ly]$': {'ale_enabled': 0}}

call dein#add('Shougo/denite.nvim') " ripgrep
call denite#custom#var('file_rec', 'command', ['rg', '--files'])
nmap <C-p> :Denite -highlight-mode-normal=CursorLine file_rec<CR>
call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--no-heading', '--smart-case'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
nmap <Leader>p :Denite -highlight-mode-normal=CursorLine grep:.<CR>
call denite#custom#map('insert', '<Up>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('normal', '<Up>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', '<Down>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('normal', '<Down>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<Esc>', '<denite:enter_mode:normal>', 'noremap')
call denite#custom#map('normal', '<Esc>', '<denite:enter_mode:normal>', 'noremap')
call denite#custom#map('normal', 'a', '<denite:enter_mode:insert>', 'noremap')
call denite#custom#option('default', 'prompt', '»')
call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
call denite#custom#source('grep', 'sorters', ['sorter_sublime'])

call dein#add('Konfekt/FastFold') " fold

call dein#add('sbdchd/neoformat') " formatter
let g:neoformat_basic_format_trim = 1
let g:neoformat_run_all_formatters = 1
noremap <Leader>ff :Neoformat<CR>
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_json = ['prettier']
let g:neoformat_enabled_typescript = ['prettier']
let g:neoformat_enabled_scss = ['prettier']
let g:neoformat_enabled_css = ['prettier']
let g:neoformat_enabled_ocaml = ['ocamlformat', 'ocpindent']

call dein#add('othree/nginx-contrib-vim')

call dein#add('plasticboy/vim-markdown')
let g:vim_markdown_conceal = 0
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_toc_autofit = 1
autocmd FileType markdown nmap <buffer> <silent> <F4> :silent Toc<CR>

" call dein#add('asciidoc/vim-asciidoc')
" call dein#add('wlangstroth/vim-racket')
" call dein#add('dart-lang/dart-vim-plugin')
" call dein#add('tbastos/vim-lua')

call dein#add('othree/html5.vim')

call dein#add('hail2u/vim-css3-syntax')
call dein#add('cakebaker/scss-syntax.vim')

call dein#add('elzr/vim-json')
let g:vim_json_syntax_conceal = 0

call dein#add('mxw/vim-jsx')
let g:jsx_ext_required = 1

call dein#add('HerringtonDarkholme/yats.vim')

" call dein#add('flowtype/vim-flow')
" let g:flow#enable = 0

" call dein#add('carlitux/deoplete-ternjs')
call dein#add('othree/yajs.vim')
call dein#add('othree/es.next.syntax.vim')
call dein#add('jiangmiao/simple-javascript-indenter')
" call dein#add('pangloss/vim-javascript')
" call dein#add('https://raw.githubusercontent.com/pangloss/vim-javascript/master/indent/javascript.vim', {'script_type' : 'indent'})

" call dein#add('zchee/deoplete-jedi')
call dein#add('Vimjas/vim-python-pep8-indent')
call dein#add('lilydjwg/python-syntax')
let python_highlight_all = 1

call dein#add('rgrinberg/vim-ocaml')

call dein#add('rhysd/vim-wasm')

call dein#add('keith/swift.vim')
" call dein#add('rust-lang/rust.vim')

if has('nvim')
    call dein#add('Shougo/deoplete.nvim') " complete
    let g:deoplete#enable_at_startup = 1
    let g:deoplete#auto_complete_start_length = 1
    let g:deoplete#file#enable_buffer_path = 1
    let g:deoplete#omni#input_patterns = {}
    imap <expr> <TAB> pumvisible() ? '<C-n>' : '<TAB>'

    call dein#add('Shougo/neosnippet.vim') " snippet
    call dein#add('Shougo/neosnippet-snippets') " snippet
    imap <C-k> <Plug>(neosnippet_expand_or_jump)

    call dein#add('Shougo/echodoc.vim') " signature
    let g:echodoc_enable_at_startup = 1

    call dein#add('autozimu/LanguageClient-neovim')
    nnoremap <silent> <Leader>a :callLanguageClient_textDocument_definition<CR>
    let g:LanguageClient_autoStart = 1
    let g:LanguageClient_diagnosticsEnable = 0
    let g:LanguageClient_serverCommands = {}
    " let g:LanguageClient_serverCommands.javascript = ['javascript-typescript-stdio']
    let g:LanguageClient_serverCommands.typescript = ['javascript-typescript-stdio']
    let g:LanguageClient_serverCommands.ocaml = ['ocaml-language-server', '--stdio']
    nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
    nnoremap <silent> L :call LanguageClient_textDocument_definition()<CR>

    call dein#add('Shougo/neco-syntax') " syntax complete
endif
" if dein#check_install()
" call dein#install()
" endif
call dein#end()

filetype plugin indent on "载入文件类型 插件 缩进
syntax enable "语法加亮

autocmd BufRead,BufNewFile *.vue setf html
" autocmd FileType * setl noet
autocmd FileType scheme setl ts=2 sts=2 sw=2

colorscheme NeoSolarized
set background=dark "深色背景
set background=light "浅色背景
highlight LintSign guifg=#dc322f guibg=#eee8d5
highlight ALEErrorSign guifg=#dc322f guibg=#eee8d5
highlight ALEWarningSign guifg=#dc322f guibg=#eee8d5
highlight SignColumn guibg=#eee8d5
highlight GitGutterAdd guibg=#eee8d5
highlight GitGutterChange guibg=#eee8d5
highlight GitGutterDelete guibg=#eee8d5
highlight GitGutterChangeDelete guibg=#eee8d5
" highlight IndentGuidesOdd  guibg=#eee8d5
highlight IndentGuidesEven guibg=#eee8d5
highlight SpecialKey guifg=#93a1a1 guibg=NONE

""" 其他
" 调整文件
nmap <silent> <F6> :call FormatFile()<CR>
function! FormatFile()
    let l = line('.')
    let c = col('.')

    " 使用\n换行
    let &ff = 'unix'

    " 使用utf-8编码
    let &fenc = 'utf8'

    " 去除 BOM
    exe 'set nobomb'

    " delete <0d>
    exe 'silent! :%s/\r/\r/g'

    " 删除行尾空格
    " exe 'silent! :%s/\\s\\+$//g'
    exe 'silent! :%s/\v\s+$//g'

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

    " 调整缩进
    " if (&ft !~ 'python|markdown|text')
    " exe 'normal gg=G``'
    " exe 'silent! :retab'
    " endif

    call cursor(l, c)
    exe 'normal zz'
endfunction
