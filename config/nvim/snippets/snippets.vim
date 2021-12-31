augroup snippets
	autocmd!
	autocmd FileType cpp nnoremap ,cpp :-1read !cat ~/.config/nvim/snippets/cpp<CR>
	autocmd FileType cpp nnoremap ,cmp :-1read !cat ~/.config/nvim/snippets/competitive_coding<CR>
	autocmd FileType c nnoremap ,c :-1read !cat ~/.config/nvim/snippets/c<CR>
	autocmd FileType tex nnoremap ,tex :-1read !cat ~/.config/nvim/snippets/tex<CR>
	autocmd FileType tex nnoremap ,table :-1read !cat ~/.config/nvim/snippets/texTable<CR>
	autocmd FileType tex nnoremap setlocal foldmethod=expr
  autocmd FileType tex nnoremap setlocal foldexpr=vimtex#fold#level(v:lnum)
  autocmd FileType tex nnoremap setlocal foldtext=vimtex#fold#text()
	autocmd FileType html nnoremap ,html :-1read !cat ~/.config/nvim/snippets/html<CR>
	autocmd FileType php nnoremap ,html :-1read !cat ~/.config/nvim/snippets/html<CR>
augroup END
