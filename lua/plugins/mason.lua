return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'nvim-lua/plenary.nvim',
    'neovim/nvim-lspconfig',
  },
  config = function()
    local lsp = require("lsp-zero")
    lsp.preset("recommended")
    lsp.on_attach(function (client, bufnr)
    	lsp.default_keymaps({buffer = bufnr})
    end)
    require("lsp-zero").setup()
    require("mason").setup()

    require("mason-lspconfig").setup {
      ensure_installed = {"ruff", "volar"},
      automatic_installation = true,
    }

    require("mason-lspconfig").setup_handlers {
      -- check `:h mason-lspconfig-automatic-server-setup` for details.
      -- set servers automatically
      function (server_name)
	  require "lspconfig" [server_name].setup {}
      end,
      -- dedicated handlers for specific servers
      -- For Volar
      ["volar"] = function()
	local mason_registry = require('mason-registry')
	local vue_language_server_path = mason_registry.get_package('vue-language-server'):get_install_path() .. '/node_modules/@vue/language-server'
	local lspconfig = require("lspconfig")
	lspconfig.ts_ls.setup {
	  init_options = {
	    plugins = {
	      {
		name = '@vue/typescript-plugin',
		location = vue_language_server_path,
		languages = { 'vue' },
	      },
	    },
	  },
	  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
	}
	lspconfig.volar.setup({})
      end
    }
  end
}
