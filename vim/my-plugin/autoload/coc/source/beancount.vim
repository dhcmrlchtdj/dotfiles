" https://github.com/neoclide/coc.nvim/wiki/Create-custom-source
function! coc#source#beancount#init() abort
	return {
				\ 'shortcut': 'beancount',
				\ 'priority': 9,
				\ 'filetypes': ['beancount']
				\ }
endfunction

" bean-query main.bean 'select distinct(payee)' | gsed -E -e '1,2d' -e 's/[[:space:]]+$//' -e 's/^/\\ "/' -e 's/$/",/' | sort | pbcopy
" bean-query main.bean 'select distinct(account)' | gsed -E -e '1,2d' -e 's/[[:space:]]+$//' -e 's/^/\\ "/' -e 's/$/",/' | sort | pbcopy
function! coc#source#beancount#complete(opt, cb) abort
	let items = [
				\ "Assets:Cash"
				\ ]
	call a:cb(items)
endfunction
