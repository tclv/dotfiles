vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("plugins")

vim.o.mouse = "a"

vim.wo.number = true
vim.wo.cursorline = true
vim.o.linebreak = true
vim.o.showmode = true

vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true

vim.o.termguicolors = true
vim.o.completeopt = "menuone,noselect"

vim.o.autoindent = true
vim.o.expandtab = true
vim.o.smarttab = true

-- vim.o.sw = 4
-- vim.o.sts = 4

vim.keymap.set("n", "<Leader>n", ':let@/=""<CR>')

vim.cmd("colorscheme kanagawa")
vim.g.airline_theme = "raven"

vim.o.spell = true
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

vim.keymap.set("n", "<Leader>h", "<C-w>h")
vim.keymap.set("n", "<Leader>j", "<C-w>j")
vim.keymap.set("n", "<Leader>k", "<C-w>k")
vim.keymap.set("n", "<Leader>l", "<C-w>l")

vim.keymap.set("n", "<Leader>sv", ":vsplit<CR>")
vim.keymap.set("n", "<Leader>sh", ":split<CR>")

vim.o.splitright = true
vim.o.splitbelow = true

vim.keymap.set({ "i" }, "hj", "<Esc>", { remap = true })

vim.keymap.set("n", "<Leader>w", ":w<CR>")
vim.keymap.set("n", "<Leader>pl", ":source ~/.config/nvim/init.vim<CR>")
vim.keymap.set("n", "<Leader>po", ":e ~/.config/nvim/lua/init.lua<CR>")

vim.keymap.set("n", "<Leader>pi", ":PackerSync<CR>")
vim.keymap.set("n", "<Leader>pu", ":PackerUpdate<CR>")
vim.keymap.set("n", "<Leader>pc", ":PackerClean<CR>")

vim.g.python_host_prog = "/Users/dorus/.nvim_python/python2/.venv/bin/python"
vim.g.python3_host_prog = "/Users/dorus/.nvim_python/python3/.venv/bin/python"

vim.g.poetv_auto_activate = 1

require("config/telescope")
require("config/null-ls")
require("config/treesitter")
require("config/lsp")
require("config/cmp")
require("config/luasnip")
