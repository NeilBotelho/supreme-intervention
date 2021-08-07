"Normal Mode Maps{{{
nnoremap tb :SignatureToggleSigns<CR>
nnoremap tn :set invnumber<CR>
nnoremap tr :RelativizeToggle<CR>
nnoremap So :w<CR>:source $MYVIMRC<CR>
nnoremap Sp :w<CR>:source $MYVIMRC<CR>:PlugInstall<CR>
nnoremap Sm :setlocal foldmethod=marker<CR>
nnoremap Pi So:PlugInstall<CR>
nnoremap <leader>c :Telescope colorscheme<CR>
nnoremap <Esc> <Esc><Esc>
nnoremap <leader>ev :edit $MYVIMRC<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>H :noh<CR>
nnoremap <leader>R :%s/
"searching
nnoremap n nzzzv
nnoremap N Nzzzv

"}}}
"Insert Mode Maps{{{
let mapleader=" "
inoremap jj <Esc>
inoremap <C-h> <Esc>hi
inoremap <C-j> <Esc>ji
" imap <C-k> <Esc>ki
inoremap <C-l> <Esc>la

"}}}
"Visual Mode maps{{{
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
"}}}
"Disable Ex mode{{{
nnoremap Q <Nop> 
"}}}
"Tab navigation{{{
nnoremap  <C-k> <C-PageUp>
nnoremap  <C-j> <C-PageDown>
nnoremap <C-Tab> :tabn<CR>
"}}}
"Vim Fugitive maps{{{
"
nmap <leader>gs :G<CR><C-w>o
nmap <leader>gf :diffget //2<CR>
nmap <leader>gc :G commit<CR>
nmap <leader>gj :diffget //3<CR>

"}}}
"Telescope maps{{{
nnoremap <leader>o :Telescope find_files<CR>
nnoremap <leader>O :Telescope git_files<CR>
nnoremap <leader>b :Telescope buffers<CR>
nnoremap <leader>t :Telescope treesitter<CR>
nnoremap <leader>s :Telescope live_grep<CR>
nnoremap <leader>f :Telescope live_grep<CR>
"}}}
"Mundo maps{{{
nnoremap tz :MundoToggle<CR>
let g:mundo_width = 70
let g:mundo_preview_height = 15
let g:mundo_right = 1
"}}}
"Any Jump maps{{{
let g:any_jump_disable_default_keybindings = 1
" Anyjump with selection
xnoremap <leader>u :AnyJumpVisual<CR>

" Anyjump with word under cursor
nnoremap <leader>u :AnyJump<CR>

" open last closed search window again
nnoremap <leader>al :AnyJumpLastResults<CR>
"}}}
"Better escape settings{{{
" set time interval to 200 ms
let g:better_escape_interval = 100
" use jj to escape insert mode.
let g:better_escape_shortcut = 'jj'
"}}}
" Window maps{{{
"
nnoremap <leader>v <C-w>v
nnoremap <leader>wo <C-w>o<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
noremap <leader>w= :resize +5<CR>
noremap <leader>w- :resize -5<CR>
noremap <leader>w< :vertical:resize -5<CR>
noremap <leader>w> :vertical:resize +5<CR>

" }}}
" Toggle Terminal window{{{
nnoremap <silent> ,t :call TerminalToggle()<cr>
tnoremap <silent> ,t <C-\><C-n>:call TerminalToggle()<cr>
" }}}
"PresentationMode{{{
"
 nnoremap <leader>P :call PresentMode()<CR>
"}}}
"Completion settings{{{
"
set completeopt=menu,preview 
inoremap <C-f> <C-x><C-f>
"}}}
" Mouse Settings{{{
"
if has('mouse')
        set mouse=a
endif
set cursorline
" }}}
" Syntax Settings{{{
"
syntax on
set number
set noerrorbells
set shortmess="<Enter>"
" set expandtab
set	tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2
set smartindent
set nobackup
set undodir=~/.local/share/nvim/undodir
set undofile
set incsearch
set colorcolumn=80
set backspace=indent,eol,start
set nrformats+=alpha
" }}}
"Folding settings{{{
augroup folding
	 au!
    autocmd BufNewFile,BufRead,BufWrite * set foldmethod=syntax
		au FileType sh let g:sh_fold_enabled=5
		au FileType sh let g:is_bash=1
		au FileType sh set foldmethod=syntax
		syntax enable
    autocmd BufWrite,BufRead *.tex setlocal foldmethod=marker
    autocmd BufRead,BufWrite *.vim setlocal foldmethod=marker
augroup END
"}}}
" Use System Clipboard{{{
"
set clipboard=unnamedplus
" }}}
" General archive{{{
" NETRW settings{{{
let g:netrw_keepdir=0
let g:netrw_banner=0
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_usetab=1
" nnoremap <leader>T :Lexplore 20<CR>
" Disable netrw
" let g:loaded_netrw       = 0 "Comment out for gx support 
" let g:loaded_netrwPlugin = 0

" }}}
" NERDTree settings{{{
" nnoremap <leader>T :NERDTree<CR>
"}}}
" Sourcing Archive {{{
"Lightline settings
" so /home/neil/.config/nvim/plugins/lightline.vim
" Fzf settings
" so /home/neil/.config/nvim/plugins/fzf.vim
"NERDTree settings
" so /home/neil/.config/nvim/plugins/nerdtree.vim
" }}}
"
"}}}
" Vim plug section {{{
call plug#begin('~/.local/share/nvim/plugged')
" Declare the list of plugins.
Plug 'ericbn/vim-relativize'
Plug 'kshenoy/vim-signature'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'mhartington/oceanic-next'
Plug 'lervag/vimtex'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-vinegar'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'chrisbra/csv.vim'
Plug 'simnalamburt/vim-mundo'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'pechorin/any-jump.vim'
Plug 'kyazdani42/nvim-web-devicons'
" Trial{{{
Plug 'jdhao/better-escape.vim'
Plug 'godlygeek/tabular'
" }}}
"Telescope{{{
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"}}}
"Completion{{{
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
"}}}
" Plug Archive {{{
"NERDTree{{{
" Plug 'preservim/nerdtree'
" Plug 'ryanoasis/vim-devicons'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"}}}

" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" Plug 'ap/vim-css-color' 
" Plug 'sgur/vim-editorconfig' " Might need later
" }}}
call plug#end()

" let g:gruvbox_contrast_dark='medium'
colorscheme onedark
" }}}
" Vimscript file settings {{{
augroup filetype_vim
    autocmd!
    autocmd FileType *.vim setlocal foldmethod=marker
augroup END
" }}}
" Tex file settings {{{
augroup filetype_tex
    autocmd!
    autocmd FileType tex setlocal foldmethod=marker
		let g:vimtex_fold_enabled =1
augroup END
" }}}
" Sourcing external vim modules {{{
" Custom Functions
so /home/neil/.config/nvim/functions.vim

" Latexmk settings
so /home/neil/.config/nvim/plugins/tex.vim

" Runners setttings
so /home/neil/.config/nvim/runners.vim

" Abbreviations
so /home/neil/.config/nvim/abbreviations.vim

" Snippets
so /home/neil/.config/nvim/snippets/snippets.vim

"Coc settings
so /home/neil/.config/nvim/plugins/coc.vim

"Tree sitter settings
so /home/neil/.config/nvim/plugins/treesitter.lua

"nvimtree settings
so /home/neil/.config/nvim/plugins/nvimtree.vim

"nvim_devicons settings
so /home/neil/.config/nvim/plugins/nvim_devicons.lua

"nvim lsp settings
so /home/neil/.config/nvim/lsp/lsp.vim

"}}}
