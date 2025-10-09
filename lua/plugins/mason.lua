return {
    "mason-org/mason.nvim",
    dependencies = {
        "mason-org/mason-lspconfig.nvim",
        "nvim-lua/plenary.nvim",
        "neovim/nvim-lspconfig",
    },
    opts = {},
    config = function()
        require("mason").setup()
        -- put in after/lsp/pyright
        vim.lsp.config.pyright = {
            settings = {
                python = {
                    -- analysis = {
                    --     -- disable analysis features and default to ruff
                    --     ignore = { "*" },
                    -- },
                    pyright = {
                        disableOrganizeImports = true,
                    },
                },
            },
        }
        -- Add to  after/lsp/ts_ls
        local vue_language_server_path = vim.fn.stdpath("data")
            .. "/mason/packages/vue-language-server/node_modules/@vue/language-server"

        local tsserver_filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" }
        local vue_plugin = {
            name = "@vue/typescript-plugin",
            location = vue_language_server_path,
            languages = { "vue" },
            configNamespace = "typescript",
        }
        local ts_ls_config = {
            init_options = {
                plugins = {
                    vue_plugin,
                },
            },
            filetypes = tsserver_filetypes,
        }
        vim.lsp.config("ts_ls", ts_ls_config)
        vim.lsp.config.vue_ls = {}

        require("mason-lspconfig").setup({
            ensure_installed = { "ruff", "vue_ls", "ts_ls" },
            automatic_installation = true,
        })
    end,
}
