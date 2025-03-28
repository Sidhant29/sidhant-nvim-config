--  ********** Basic vim config variables

-- Map leader to 'space' key
vim.g.mapleader = " "
--vim.g.copilot_no_tab_map = true
-- Configure how the status line is displayed
vim.o.laststatus = 1
-- Configure how Tabs are inserted,
---- 'smarttab' allows to use custom tab lengths with 'shiftwidth'
vim.o.smarttab = true
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
-- relativenumber controls if the line numbers are relative to the cursor
-- I like this personally
vim.o.number = true
vim.o.relativenumber = true
-- enables mouse support for all the modes, 'normal', 'insert' etc.
vim.g.mouse = "a"

-- options to disable netrw and use nvim-tree instead
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- ********** Install and configure Lazy.nvim package manager

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- ********** Set Color Scheme
vim.cmd("colorscheme kanagawa")

-- ********** Key Mappings
vim.keymap.set("n", "<Tab>", "<C-W>")

-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
vim.keymap.set("n", "<Leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find current buffers" })
vim.keymap.set("n", "<Leader>fgb", "<cmd>Telescope git_branches<cr>", { desc = "Find Git Branches" })
vim.keymap.set("n", "<Leader>fgs", "<cmd>Telescope git_status<cr>", { desc = "Find git status files" })
vim.keymap.set("n", "<Leader>fgc", "<cmd>Telescope git_commits<cr>", { desc = "Find git commits" })
vim.keymap.set("n", "<Leader>fr", "<cmd>Telescope lsp_references<cr>", { desc = "Find Lsp References" })
vim.keymap.set("n", "<Leader>fd", "<cmd>Telescope lsp_definitions<cr>", { desc = "Find Lsp Definitions" })
vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle<CR>")

-- NvimTree
vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
vim.keymap.set("n", "<leader>.", "<cmd>AerialToggle<CR>", { desc = "Show Code Outline" })

-- Trouble
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Open Close trouble list" })
vim.keymap.set(
    "n",
    "<leader>xd",
    "<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
    { desc = "Open trouble document diagnostics" }
)
vim.keymap.set("n", "<leader>xq", "<cmd>Trouble qflist toggle<CR>", { desc = "Open trouble quickfix list" })
vim.keymap.set("n", "<leader>xt", "<cmd>Trouble loclist toggle<CR>", { desc = "Open trouble location list" })
vim.keymap.set("n", "<leader>xT", "<cmd>TodoTrouble<CR>", { desc = "Open ToDos in trouble" })

-- Gitsigns
vim.keymap.set("n", "<leader>gph", "<cmd>Gitsigns preview_hunk<CR>", { desc = "Git preview hunk" })
vim.keymap.set("n", "<leader>grh", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Git reset hunk" })
vim.keymap.set("n", "<leader>gnh", "<cmd>Gitsigns next_hunk<CR>", { desc = "Git next hunk" })
vim.keymap.set("n", "<leader>glh", "<cmd>Gitsigns prev_hunk<CR>", { desc = "Git last hunk" })
