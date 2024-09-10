return {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
      dependencies = {
	'nvim-lua/plenary.nvim',
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make"},
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
	defaults = {
	  path_display = { "smart" },
	  },
	}
      )

      telescope.load_extension("fzf")
    end,
}
