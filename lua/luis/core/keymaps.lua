vim.g.mapleader = " "

local key = vim.keymap

key.set("i", "jk", "<ESC>", { desc = "Exit Inser Mode" })

-- Select all
key.set("n", "<C-a>", "gg<S-v>G", { desc = "Select All" })

key.set("n", "x", '"_x', { desc = "Delete with x" })
key.set("n", ";", ":", { desc = "Command With Semicolon" })

key.set("n", "<C-d>", "<C-d>zz", { desc = "Page Down" })
key.set("n", "<C-u>", "<C-u>zz", { desc = "Page Up" })

key.set("n", "dw", 'vb"_d', { desc = "Delete Word" })

-- Save/Quit
key.set("n", "<leader>ww", ":w<CR>", { desc = "Save File" })
key.set("n", "<leader>wa", ":wa<CR>", { desc = "Save All Files" })
key.set("n", "<leader>q", ":q<CR>", { desc = "Exit Nvim" })
key.set("n", "<leader>Q", ":q!<CR>", { desc = "Exit Nvim" })

key.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear Search Highlights" })

-- Move text up and down
key.set("x", "J", ":move '>+1<CR>gv-gv", { desc = "Move Line Up" })
key.set("x", "K", ":move '<-2<CR>gv-gv", { desc = "Move Line Down" })
key.set("x", "<A-j>", ":move '>+1<CR>gv-gv", { desc = "" })
key.set("x", "<A-k>", ":move '<-2<CR>gv-gv", { desc = "" })

-- Increase/Decrease Numbers
key.set("n", "<leader>=", "<C-a>", { desc = "Increase Number" })
key.set("n", "<leader>-", "<C-a>", { desc = "Decrease Number" })

-- Window Management
key.set("n", "<leader>sv", "<C-w>v", { desc = "Split Vertcaly" })
key.set("n", "<leader>sh", "<C-w>s", { desc = "Split Horizontally" })
key.set("n", "<leader>se", "<C-w>=", { desc = "Make Splits Equal Size" })
key.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close Current Split" })

key.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open New Tab" })
key.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close Current Tab" })
key.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go To Next Tab" })
key.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go To Previous Tab" })
key.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open Current Buffer in New Tab" })

key.set("v", "<", "<gv", { desc = "Stay in Indent Mode" })
key.set("v", ">", ">gv", { desc = "Stay in Indent Mode" })

-- Better window navigation
key.set("n", "<S-h>", "<C-w>h", { desc = "" })
key.set("n", "<S-j>", "<C-w>j", { desc = "" })
key.set("n", "<S-k>", "<C-w>k", { desc = "" })
key.set("n", "<S-l>", "<C-w>l", { desc = "" })

-- Resize with arrows
key.set("n", "<C-Up>", ":resize -2<CR>", { desc = "" })
key.set("n", "<C-Down>", ":resize +2<CR>", { desc = "" })
key.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "" })
key.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "" })

-- Navigate buffers
key.set("n", "<C-l>", ":bnext<CR>", { desc = "" })
key.set("n", "<C-h>", ":bprevious<CR>", { desc = "" })
