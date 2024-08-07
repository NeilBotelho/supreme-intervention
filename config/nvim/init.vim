" Vim Plug{{{
call plug#begin('~/.local/share/nvim/plugged')
Plug 'chrisbra/csv.vim'
Plug 'ericbn/vim-relativize'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/goyo.vim'
Plug 'kshenoy/vim-signature'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lervag/vimtex'
Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'pechorin/any-jump.vim'
Plug 'simnalamburt/vim-mundo'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
" Trial{{{
Plug 'godlygeek/tabular'
Plug 'jdhao/better-escape.vim'
Plug 'phaazon/hop.nvim'
Plug 'puremourning/vimspector'
" }}}
"Telescope{{{
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
"}}}
"Completion{{{
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
"}}}
" Plug Archive {{{
"NERDTree{{{
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'preservim/nerdtree'
" Plug 'ryanoasis/vim-devicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"}}}
" Plug 'ap/vim-css-color' 
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'sgur/vim-editorconfig' " Might need later
" }}}
call plug#end()
"}}}

colorscheme onedark
so /home/neil/.config/nvim/lib/maps.lua
so /home/neil/.config/nvim/lib/settings.lua
so /home/neil/.config/nvim/plugins/treesitter.lua
so /home/neil/.config/nvim/plugins/nvim_devicons.lua
so /home/neil/.config/nvim/plugins/settings.lua


so /home/neil/.config/nvim/lib/runners.vim
so /home/neil/.config/nvim/lib/functions.vim
so /home/neil/.config/nvim/lib/abbreviations.vim
so /home/neil/.config/nvim/snippets/snippets.vim
so /home/neil/.config/nvim/plugins/nvimtree.vim
" so /home/neil/.config/nvim/plugins/coc.vim


so /home/neil/.config/nvim/plugins/lsp.lua
" so /home/neil/.config/nvim/lib/test.lua
