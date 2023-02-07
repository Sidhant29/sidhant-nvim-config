:set relativenumber
:set mouse=a
:set number
:set background=dark
:set laststatus=3
let mapleader = " "

call plug#begin()

" LSP Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'ayu-theme/ayu-vim'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'simrat39/rust-tools.nvim'

"  Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'VonHeikemen/lsp-zero.nvim'

" Themes
Plug 'rebelot/kanagawa.nvim'
Plug 'wittyjudge/gruvbox-material.nvim'
Plug 'morhetz/gruvbox'
Plug 'nvim-lualine/lualine.nvim'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" or                                , { 'branch': '0.1.x' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'psliwka/vim-smoothie'
Plug 'preservim/nerdcommenter'
Plug 'lukas-reineke/indent-blankline.nvim'

" nerdtree support
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Github marker integration
Plug 'lewis6991/gitsigns.nvim'

call plug#end()

let g:smoothie_constant_speed_factor=100
filetype plugin on

"gruvbox options
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_transparent_bg = '1'
colorscheme gruvbox

"Key remappings
nmap <C-/> <Leader>ci
vmap <C-/> <Leader>ci
nmap <leader>/ <Leader>ci
vmap <leader>/ <Leader>ci
nnoremap <Tab> <C-W>
nnoremap <leader>p <cmd>Telescope find_files<cr>
nnoremap <leader>f <cmd>Telescope grep_string<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeFind<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
