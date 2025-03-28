return {
    "lewis6991/gitsigns.nvim",
    config = function()
        local gitsigns = require("gitsigns").setup({
            numhl = true,
            current_line_blame = true,
            current_line_blame_opts = {
                virt_text_ops = "right_align",
            },
        })
    end,
}
