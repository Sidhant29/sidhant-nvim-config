
local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()

require('gitsigns').setup()
signcolumn = true,
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
-- telescope cofig
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

