return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")
        conform.setup({
            formatters_by_ft = {
                lua = { "stylua" },
                javascript = { "prettier" },
                vue = { "prettier" },
                typescript = { "prettier" },
                python = { "ruff" },
                json = { "prettierd" },
            },
        })
        vim.keymap.set({ "n", "v" }, "<leader>ll", function()
            conform.format({
                async = false,
                timeout_ms = 5000,
            })
        end, { desc = "Format File in Normal Mode" })
    end,
}
