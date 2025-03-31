-- lua/core/keymaps.lua
vim.g.mapleader = " "

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Navigation
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Paste over without overwriting clipboard
keymap("x", "<leader>p", [["_dP]], opts)

-- Yank to system clipboard
keymap("n", "<leader>y", [["+y]], opts)
keymap("v", "<leader>y", [["+y]], opts)
keymap("n", "<leader>Y", [["+Y]], opts)

-- Quickfix and location list navigation
keymap("n", "<C-k>", ":cnext<CR>zz", opts)
keymap("n", "<C-j>", ":cprev<CR>zz", opts)
keymap("n", "<leader>k", ":lnext<CR>zz", opts)
keymap("n", "<leader>j", ":lprev<CR>zz", opts)

-- Search and replace word under cursor

-- NERDTree
keymap("n", "<leader>n", ":NERDTreeToggle<CR>", opts)

-- Window switching
keymap("n", "<leader>w", "<C-w>w", opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)

-- Asyncomplete tab navigation
vim.cmd [[
  inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
  inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
]]

