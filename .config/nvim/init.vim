" Plugins 
call plug#begin()
  Plug 'olimorris/onedarkpro.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-tree/nvim-tree.lua'
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'nvim-lualine/lualine.nvim'
call plug#end()

" Plugin Configurations
lua << EOF
  require'nvim-treesitter.configs'.setup {
    ensure_installed = {"python"},
    highlight = {
      enable = true, 
      additional_vim_regex_highlighting = true 
    },
    indent = {
      enable = true
    }
  }
  require('lualine').setup()
  require("nvim-tree").setup()
EOF

" Color Settings
syntax on
colorscheme onedark

" Copy/Paste Settings
set clipboard=unnamedplus
set paste

" Undo Settings
set undofile
set undodir=~/.vim/undodir

" Search Settings
set ignorecase 
set smartcase
set incsearch
set hlsearch

" Interface Settings
set number
set cursorline
set wildmenu
set nowrap
set colorcolumn=120

" Indent Settings
set autoindent
set copyindent

" Tab Settings
set tabstop=2 
set shiftwidth=2
set softtabstop=0
set expandtab
set smarttab   

" Miscellaneous Settings
filetype plugin indent on
set autoread
