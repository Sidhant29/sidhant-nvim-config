require("vim")
-- Basic vim config variables
vim.g.mapleader= ' '
vim.g.copilot_no_tab_map = true
vim.o.laststatus = 3
vim.o.smarttab = true
vim.o.shiftwidth = true
vim.o.relativenumber = true
vim.o.mouse = 'a'
vim.o.background = "dark"
vim.o.colorscheme = "dracula"

-- Key Mappings
vim.keymap.set({"n", "v"}, "<C-/>", "<Leader>ci")
vim.keymap.set("n", "<Leader>/", "<Leader>ci")
vim.keymap.set("n", "<Leader>p", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<Leader>f", "<cmd>Telescope grep_string<cr>")
vim.keymap.set("n", "<Leader>b", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<Leader>gb", "<cmd>Telescope git_branches<cr>")
vim.keymap.set("n", "<Leader>gs", "<cmd>Telescope git_status<cr>")
vim.keymap.set("n", "<Leader>gc", "<cmd>Telescope git_commits<cr>")
vim.keymap.set("n", "<Leader>lr", "<cmd>Telescope lsp_references<cr>")
vim.keymap.set("n", "<Leader>fb", "<cmd>Telescope file_browser<cr>")
vim.keymap.set('i', '<C-J>', 'copilot#Accept("")', {
  expr = true,
  replace_keycodes = false
})
require('packer-plugins')
