vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move text block in Visual Mode - J, K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Cursor stays in place when joining lines
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in the middle when scrolling with ctrl- d / u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor in middle while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Don't copy replaced text when pasting
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to clipboard when prefixing with Leader
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable Ex-mode with Q
vim.keymap.set("n", "Q", "<nop>")

-- Rename all occurances of word
vim.keymap.set("n", "<leader>r",
    [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make excecutable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Go to packer file for package management
vim.keymap.set("n", "<leader>vpp",
    "<cmd>e ~/.config/nvim/lua/albin/packer.lua<CR>");

