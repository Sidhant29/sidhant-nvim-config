return {
    {
        "rebelot/kanagawa.nvim",
        config = {
            transparent = true,
        },
    },
    {
        "sainnhe/everforest",
        lazy = false,
        config = function()
            vim.g.everforest_transparent_background = 1
            vim.g.everforest_background = 'hard'
            vim.g.everforrest_enable_italic = 1
        end,
    },
}
