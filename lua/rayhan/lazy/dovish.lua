return {
	"roginfarrer/vim-dirvish-dovish",
	config = function ()
		local group = vim.api.nvim_create_augroup("rayhan_dovish", {})
		vim.api.nvim_create_autocmd("BufWinEnter", {
			group = group,
			pattern = "*",
			callback = function ()
				if vim.bo.ft ~= "dirvish" then
					return
				end

				-- vim.cmd([[
				-- 	let g:dirvish_dovish_map_keys = 0

				-- 	unmap <buffer> p
				-- 	nnoremap <buffer> <C-R> <Nop>

				-- 	function! g:DovishDelete(target) abort
				-- 		return 'rm -rf "' . a:target . '"'
				-- 	endfunction

				-- 	nmap <silent><buffer> nf <Plug>(dovish_create_file)
				-- 	nmap <silent><buffer> nd <Plug>(dovish_create_directory)
				-- 	nmap <silent><buffer> x <Plug>(dovish_delete)
				-- 	nmap <silent><buffer> <C-R> <Plug>(dovish_rename)
				-- 	nmap <silent><buffer> yy <Plug>(dovish_yank)
				-- 	xmap <silent><buffer> yy <Plug>(dovish_yank)
				-- 	nmap <silent><buffer> p <Plug>(dovish_copy)
				-- 	nmap <silent><buffer> v <Plug>(dovish_move)
				-- ]])
			end,
		})
	end,
}
