function! neoformat#formatters#astro#enabled() abort
	return ['prettierd']
endfunction

function! neoformat#formatters#astro#prettierd() abort
	return {
		\ 'exe': 'prettierd',
		\ 'args': ['"%:p"'],
		\ 'stdin': 1,
		\ }
endfunction
