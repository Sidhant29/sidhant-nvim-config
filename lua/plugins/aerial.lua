return {
    {
        "stevearc/aerial.nvim",
        opts = {
            layout = {
                default_direction = "float",
            },
            close_automatic_events = {
                "unfocus",
            },
            float = {
                relative = "win",
                -- Override config from: https://github.com/stevearc/aerial.nvim/issues/107
                override = function(conf, source_winid) -- <- the source_winid is new
                    local padding = 1
                    conf.anchor = "NE"
                    conf.row = padding
                    conf.col = vim.api.nvim_win_get_width(source_winid) - padding
                    return conf
                end,
            },
        },
        -- Optional dependencies
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons",
        },
    },
}
