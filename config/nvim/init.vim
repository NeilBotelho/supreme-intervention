"INTERACTIVE MODE MAPS{{{
let mapleader=" "
imap jj <Esc>
imap <C-h> <Esc>hi
imap <C-j> <Esc>ji
imap <C-k> <Esc>ki
imap <C-l> <Esc>la

"}}}
"NORMAL MODE MAPS{{{
"
nnoremap tb :SignatureToggleSigns<CR>
nnoremap tn :set invnumber<CR>
nnoremap tr :RelativizeToggle<CR>
nnoremap So :w<CR>:source $MYVIMRC<CR>
nmap Sp So:PlugInstall<CR>
nnoremap <leader>e :edit $MYVIMRC<CR>
nnoremap <leader>ev :edit $MYVIMRC<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>H :noh<CR>
nnoremap <leader>s :Lines<CR>
nnoremap <leader>S :Rg <CR>
nnoremap <leader>R :%s/

"}}}
"Disable Ex mode{{{
"
nnoremap Q <Nop> 
"}}}
"Tab navigation{{{
"
nnoremap  <C-j> <C-PageDown>
nnoremap  <C-k> <C-PageUp>
nnoremap <C-Tab> :tabn<CR>

"}}}
"Vim Fugitive maps{{{
"
nmap <leader>gs :G<CR><C-w>o
nmap <leader>gc :G commit<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gj :diffget //3<CR>

"}}}
"Fzf maps{{{
"
nmap <leader>o :Files<CR>
nmap <leader>O :FRg<CR>
nmap <leader>b :Buffers<CR>

"}}}
"Mundo maps{{{
nnoremap tz :MundoToggle<CR>
let g:mundo_width = 70
let g:mundo_preview_height = 15
let g:mundo_right = 1
"}}}
" Window maps{{{
"
nnoremap <leader>v :<C-w>v<CR>
nnoremap <leader>wo <C-w>o<CR>
nnoremap <leader>n <C-i>
nnoremap <leader>p <C-o>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
noremap <leader>w= :resize +5<CR>
noremap <leader>w- :resize -5<CR>
noremap <leader>w< :vertical:resize -5<CR>
noremap <leader>w> :vertical:resize +5<CR>

" }}}
" toggle terminal window{{{
"
nnoremap <silent> ,t :call TerminalToggle()<cr>
tnoremap <silent> ,t <C-\><C-n>:call TerminalToggle()<cr>
"
" }}}
"Scroll maps{{{
"
noremap <leader>e <C-e>
noremap <leader>y <C-y>

"}}}
" NETRW settings{{{
"
let g:netrw_keepdir=0
let g:netrw_banner=0
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_usetab=1
" nnoremap <leader>T :Lexplore 20<CR>
" let g:loaded_netrw       = 1 "Comment out for gx support 
let g:loaded_netrwPlugin = 1


" }}}
" NERDTree settings{{{
nnoremap <leader>T :NERDTree<CR>
"}}}
"PresentationMode{{{
"
 " nnoremap <leader>P :call TogglePresentationMode()<CR>
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
" SYNTAX SETTINGS{{{
"
syntax on
set number
set noerrorbells
set shortmess="<Enter>"
set expandtab
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
" USE SYSTEM CLIPBOARD{{{
"
set clipboard=unnamedplus

" }}}
" Vim plug section {{{
call plug#begin('~/.local/share/nvim/plugged')
" Declare the list of plugins.
Plug 'ericbn/vim-relativize'
Plug 'kshenoy/vim-signature'
" Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'lervag/vimtex'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar'
Plug 'junegunn/goyo.vim'
Plug 'chrisbra/csv.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'simnalamburt/vim-mundo'
" Plug 'ap/vim-css-color' 
" Plug 'sgur/vim-editorconfig' " Might need later
call plug#end()
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

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

" Fzf settings
so /home/neil/.config/nvim/plugins/fzf.vim

"Snippets
so /home/neil/.config/nvim/snippets.vim

"Coc settings
so /home/neil/.config/nvim/plugins/coc.vim

"Lightline settings
so /home/neil/.config/nvim/plugins/lightline.vim

"NERDTree settings
" so /home/neil/.config/nvim/plugins/nerdtree.vim
"}}}
" Vimscript file settings {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

