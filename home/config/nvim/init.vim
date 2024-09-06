" Plugins 
call plug#begin()
    Plug 'olimorris/onedarkpro.nvim'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'nvim-tree/nvim-tree.lua'
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

" Plugin Configurations
lua << EOF
    require'nvim-treesitter.configs'.setup {
        ensure_installed = {"python", "bash", "gitignore", "git_config", "html", "css", "javascript", "json", "latex"},
        highlight = {
            enable = true, 
            additional_vim_regex_highlighting = false 
        },
        indent = {
            enable = true
        }
    }
    require('lualine').setup()
    require("nvim-tree").setup()
EOF

" Global Settings
set nocompatible

" Color Settings
if has('termguicolors')
    set termguicolors
endif

" Colorscheme Settings
colorscheme onedark
syntax on
set background=dark

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

" Line Settings
set nolinebreak
set nowrap
au BufRead,BufNewFile *.txt set wrap linebreak nolist textwidth=0 wrapmargin=0

" Line Number Settings
set number
set relativenumber

" Interface Settings
set cursorline
set colorcolumn=120
set cmdheight=1
set showmatch

" Memory Settings
set history=1000
set undolevels=1000

" Alert Settings
set novisualbell
set noerrorbells

" Wild Menu Settings
set wildmenu
set wildmode=longest:full,full

" Indent Settings
set autoindent
set copyindent

" Tab Settings
set tabstop=4 
set softtabstop=4
set expandtab
set smarttab
set shiftwidth=4
set shiftround

" Backspace Settings
set backspace=indent,eol,start

" Mouse Settings
set mouse=a

" Spell-Checking Settings
autocmd BufRead,BufNewFile *.txt,*.tex,*.cls,*.sty set spell

" File Settings
filetype plugin indent on
set autoread
set hidden

" Temp File Settings
set nobackup
set noswapfile

" Input Settings
set ttyfast

" Encoding Settings
set encoding=UTF-8

" Map Settings
map <C-o> :NvimTreeToggle<CR>
nnoremap ; :
nnoremap j gj
nnoremap k gk
