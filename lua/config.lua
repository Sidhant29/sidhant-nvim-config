
local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()

require('gitsigns').setup()
require('octo').setup()
signcolumn = true,
require('lualine').setup()

local kanagawa = require("kanagawa")
kanagawa.setup({
    transparent=true,
})

-- nvim-treesitter highlight
require'nvim-treesitter.configs'.setup {
 highlight = {
   enable = true,
 },
}

-- line indent
require("indent_blankline").setup {}
-- telescope cofig
require("telescope").setup {
  defaults = {
    -- ....
  },
  pickers = {
    find_files = {
      find_command = { "fd", "--type", "f" }
   },
  },
  extensions = {
    file_browser = {
	grouped = true,
    }
  }
}
require("telescope").load_extension "file_browser"

-- rust tools configs
local rt = require("rust-tools")
-- rust_analyzer already has an on_attach function. We don't
-- want to overwrite that because it has useful maps like `gd`
-- and S-k etc. So we have to call that existing function inside
-- the new one that creates specific maps for rust-tools.
rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})

-- null-ls config
local null_ls = require("null-ls")
null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
        	null_ls.builtins.diagnostics.eslint,
		null_ls.builtins.diagnostics.flake8,
		null_ls.builtins.formatting.rustfmt,
	},

})

-- aerial setup
require('aerial').setup({
  -- optionally use on_attach to set keymaps when aerial has attached to a buffer
  autojump = true,
  on_attach = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', {buffer = bufnr})
    vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', {buffer = bufnr})
  end
})
-- You probably also want to set a keymap to toggle aerial
vim.keymap.set('n', '<leader>.', '<cmd>AerialToggle!<CR>')

-- Add ruff_lsp for python
require('lspconfig').ruff_lsp.setup {
  on_attach = on_attach,
  init_options = {
    settings = {
      -- Any extra CLI arguments for `ruff` go here.
      args = {},
    }
  }
}
