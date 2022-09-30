:set relativenumber
:set mouse=a
:set number

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
Plug 'hrsh7th/cmp-nvim-lua'

"  Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'VonHeikemen/lsp-zero.nvim'

" Themes
Plug 'wittyjudge/gruvbox-material.nvim'
Plug 'tanvirtin/monokai.nvim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'

Plug 'nvim-lualine/lualine.nvim'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" or                                , { 'branch': '0.1.x' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'psliwka/vim-smoothie'
Plug 'preservim/nerdcommenter'
Plug 'lukas-reineke/indent-blankline.nvim'

" nerdtree support
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Github marker integration
Plug 'lewis6991/gitsigns.nvim'

call plug#end()

lua <<EOF
local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()

require('gitsigns').setup()
require('lualine').setup()

-- nvim-treesitter highlight
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
}

-- line indent
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    -- show_current_context = true,
}

require("telescope").setup {
  defaults = {
    -- ....
  },
  pickers = {
    find_files = {
      find_command = { "fd", "--type", "f" }
   },
  }
}

EOF

let g:gruvbox_contrast_dark = 'hard'
filetype plugin on
nmap <C-/> <Leader>ci
vmap <C-/> <Leader>ci
:nnoremap <C-p> <cmd>Telescope find_files<cr>
:nnoremap <C-f> <cmd>Telescope grep_string<cr>
:nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeFind<CR>
:let g:smoothie_constant_speed_factor=100
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
colorscheme gruvbox
