-- Global variable declaration
vim.cmd('let g:cache_dir="/tmp/vim_cache/"')
vim.opt.directory=vim.g.cache_dir.."swp"
-- Folding
vim.cmd([[
augroup folding
	 au!
    autocmd BufNewFile,BufRead,BufWrite * set foldmethod=expr
		au FileType sh let g:sh_fold_enabled=5
		au FileType sh let g:is_bash=1
		au FileType sh set foldmethod=syntax
    autocmd BufWrite,BufRead *.tex setlocal foldmethod=marker
    autocmd BufWrite,BufRead *.lua setlocal foldmethod=marker
    autocmd BufWrite,BufRead functions setlocal foldmethod=marker
    autocmd BufWrite,BufRead functions setlocal foldmethod=marker
    autocmd BufWrite,BufRead aliases setlocal foldmethod=marker
    autocmd BufRead,BufWrite *.vim setlocal foldmethod=marker
augroup END
]])


-- Mouse settings
vim.opt.mouse="a"
vim.opt.cursorline=true



-- Syntax settings
vim.cmd([[
syntax on
syntax enable
set shortmess="<Enter>"
set softtabstop=0 noexpandtab
set nrformats+=alpha
]])
vim.opt.clipboard="unnamedplus"
vim.opt.number=true
vim.opt.errorbells=false
vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.opt.smartindent=true
vim.opt.backup=false
-- vim.opt.undodir="/home/neil/.local/share/nvim/undodir"
vim.opt.undodir=vim.g.cache_dir.."vim_undo_dir"
vim.opt.undofile=true
vim.opt.incsearch=true
vim.opt.colorcolumn="+80"
vim.opt.backspace="indent,eol,start"
