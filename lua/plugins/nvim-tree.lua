return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      view = {
	relativenumber = true
      },
      git = {
	ignore = false
      },
      actions = {
	open_file = {
	  quit_on_open = true,
	  window_picker = {
	    enable = false
	  },
	},
      },
    })
    
  end,
}
