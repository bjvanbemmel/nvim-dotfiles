vim.keymap.set("n", " ", "<Noh>")
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>hw", ":lua print('Hello, World!')<CR>")
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.mouse = ""

require("lazy-plugins")

-- Keybinds

local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
keymap("n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Nvim Tree binds
keymap("n", "<leader>b", ":NvimTreeToggle<CR>", opts)

keymap("n", "<C-_>", ":CommentToggle<CR>", opts)
keymap("v", "<C-_>", ":CommentToggle<CR>", opts)

-- Telescope binds
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown())<cr>", opts)
keymap('n', "<C-[>", "<cmd>lua require'telescope.builtin'.lsp_references()<CR>", opts)

-- Show all diagnostics on current line in floating window
keymap("n", "<C-j>", "<cmd>lua vim.diagnostic.open_float()<cr>", opts)


-- Harpoon binds
keymap("n", "ma", ":lua require('harpoon.mark').add_file()<CR>", opts)
keymap("n", "mv", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)
keymap("n", "m1", ":lua require('harpoon.ui').nav_file(1)<CR>", opts)
keymap("n", "m2", ":lua require('harpoon.ui').nav_file(2)<CR>", opts)
keymap("n", "m3", ":lua require('harpoon.ui').nav_file(3)<CR>", opts)
keymap("n", "m4", ":lua require('harpoon.ui').nav_file(4)<CR>", opts)

-- Remove annoyances
keymap("n", "mo", "<cmd>noh<cr>", opts)

keymap("n", "K", ":lua vim.lsp.buf.hover()<CR>", opts)
