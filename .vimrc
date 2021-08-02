let g:mapleader="\<Space>"
let g:neomake_javascript_enabled_makers = ['eslint']

call plug#begin('~/local/share/nvim/plugged')

"LSP
Plug 'neovim/nvim-lspconfig'

"Treesitter"
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Goyo"
Plug 'junegunn/goyo.vim'

"Twilight"
Plug 'folke/twilight.nvim'

"Snippets"
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets' 

"Dispatch"
Plug 'tpope/vim-dispatch'

"Monokai Colorscheme
Plug 'tanvirtin/monokai.nvim'

"ALE"
Plug 'w0rp/ale'

call plug#end()

" Basic settings "
syntax enable "Enable Syntax highlighting 
set number relativenumber 
syntax on
set clipboard=unnamedplus "Copy, paste b/w vim and everything else
set encoding=utf-8
set ruler "Show curser position at all time
set splitbelow "Horizontal Splits
set splitright "Vertical Splits
set cursorline "Enable Highlighting of the current line 
colorscheme monokai
set termguicolors
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

" ESLint 
"let g:neomake_javascript_enabled_makers = ['eslint']

" Sourcing
:luafile ~/.config/nvim/lua/lsp-config.lua
:luafile ~/.config/nvim/lua/treesitter.lua
source $HOME/.config/nvim/keys/mappings.vim 
source $HOME/.config/nvim/ale/ale.vim
