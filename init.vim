:set relativenumber
:set mouse=a
:set number
:set background=dark
:set laststatus=3
:set shiftwidth=4 smarttab
let mapleader = " "

call plug#begin()

" LSP Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'

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
Plug 'Mofiqul/dracula.nvim'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-file-browser.nvim'

" or                                , { 'branch': '0.1.x' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'psliwka/vim-smoothie'
Plug 'preservim/nerdcommenter'
Plug 'lukas-reineke/indent-blankline.nvim'

" nerdtree support
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Github integration
Plug 'lewis6991/gitsigns.nvim'
Plug 'pwntester/octo.nvim'

" File Structure Browser
Plug 'stevearc/aerial.nvim'

call plug#end()

let g:smoothie_constant_speed_factor=100
filetype plugin on

"gruvbox options
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_transparent_bg = '1'

"Key remappings
nmap <C-/> <Leader>ci
vmap <C-/> <Leader>ci
nmap <leader>/ <Leader>ci
vmap <leader>/ <Leader>ci
nnoremap <Tab> <C-W>
nnoremap <leader>p <cmd>Telescope find_files<cr>
nnoremap <leader>f <cmd>Telescope grep_string<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>gb <cmd>Telescope git_branches<cr>
nnoremap <leader>gs <cmd>Telescope git_status<cr>
nnoremap <leader>gc <cmd>Telescope git_commits<cr>
nnoremap <leader>lr <cmd>Telescope lsp_references<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>nf <cmd>NERDTreeFind<CR>
nnoremap <leader>nt <cmd>NERDTreeToggle<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
imap <silent><script><expr> <C-Enter> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true

lua require('config')
colorscheme dracula
