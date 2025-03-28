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
                relativenumber = true,
                float = { enable = true },
                -- A table indicates that the view should be dynamically sized based on the
                -- longest line. :help nvim-tree-opts-view
                width = {},
            },
            git = {
                ignore = false,
            },
            actions = {
                open_file = {
                    quit_on_open = true,
                    window_picker = {
                        enable = false,
                    },
                },
            },
        })
    end,
}
