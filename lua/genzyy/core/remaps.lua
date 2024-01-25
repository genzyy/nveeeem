vim.g.mapleader = " "
local keymap = vim.keymap

keymap.set("n", "<leader>n", vim.cmd.Ex)

-- move lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

-- clear search highlights
keymap.set("n", "<leader>c", ":nohl<CR>")

-- Change split orientation
keymap.set("n", "<leader>tk", "<C-w>t<C-w>K") -- change vertical to horizontal
keymap.set("n", "<leader>th", "<C-w>t<C-w>H") -- change horizontal to vertical

-- Move around splits using Ctrl + {h,j,k,l}
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- delete without copy
keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- quick navigation
keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Diffview keymaps
keymap.set("n", "<C-d>", ":DiffviewOpen<CR>")
keymap.set("n", "<C-S-d>", ":DiffviewClose<CR>")
keymap.set("n", "<leader>d", ":DiffviewFileHistory")

-- Go to reference
keymap.set("n", "gr", ":Telescope lsp_references<CR>")

-- lsp hover definition
keymap.set("n", "K", vim.lsp.buf.hover)
