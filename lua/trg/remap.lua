local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.tabspace = 2
vim.g.tabstop = 2
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- -- Remap copy (yank) to Ctrl+c
keymap("n", "<C-c>", ":y<CR>", { noremap = true })
-- Remap paste to Ctrl+v
keymap("n", "<C-v>", '"*p', { noremap = true })
keymap("n", "<C-v>", '"+p', { noremap = true })
keymap("x", "<C-v>", '"*p', { noremap = true })
keymap("x", "<C-c>", ":y<CR>", { noremap = true })

-- Replace "w" with "h" for word navigation forward
keymap("n", "h", "b", opts)

keymap("v", "h", "b", opts)
-- Replace "b" with "j" for word navigation backward
keymap("n", "l", "w", opts)
keymap("v", "l", "w", opts)
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-q>", ":q!<CR>", opts) --quitkeymap
keymap("n", "<C-x>", ":lua vim.lsp.buf.formatting_sync()<CR>", opts) --format
--toggle nvim tree
keymap("n", "<C-s>", ":w!<CR>", opts)
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>c", ":bdelete<CR>", opts)
-- Move text up and down
--toggle telescope
keymap("n", "<C-f>", ":Telescope<CR>", opts)

-- Insert --
-- Press jk fast to exit insert mode
keymap("i", "jk", "<ESC>", opts)
keymap("i", "jj", "<ESC>", opts)
keymap("i", "<C-s>", "<ESC>:w!<CR>", opts)
-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "p", '"_dP', opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
