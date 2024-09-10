return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false, -- We want this to load this from the start
  dependencies = {
    "windwp/nvim-ts-autotag"
  },
  config = function () 
    local configs = require("nvim-treesitter.configs")

      configs.setup({
	ensure_installed = { "python", "lua", "javascript", "html" },
	sync_install = true,
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },
      })
  end
}
