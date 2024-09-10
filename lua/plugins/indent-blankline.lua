return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {},
  config = function ()
    local ibl = require("ibl").setup()
  end
}
