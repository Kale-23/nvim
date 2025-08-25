-- OPTIONS
vim.opt.clipboard = "unnamedplus"
vim.opt.colorcolumn = "80"
vim.opt.cursorcolumn = false
vim.opt.expandtab = true
vim.opt.guicursor = ""
vim.opt.hlsearch = false
vim.opt.incsearch = true -- shows matches as typed during search
vim.opt.mouse = "a" -- enable mouse in all modes
vim.opt.number = true -- line numbers
vim.opt.relativenumber = false 
vim.opt.shell = "fish"
vim.opt.shiftwidth = 2
vim.opt.showmode = false 
vim.opt.showtabline = 2
vim.opt.signcolumn = "yes" -- always show (keeps columns consistant)
vim.opt.smartindent = true
vim.opt.softtabstop = 2
vim.opt.scrolloff = 8
vim.opt.swapfile = true 
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.updatetime = 500
vim.opt.winborder = "rounded"
vim.opt.wrap = false

-- AUTOCOMMANDS
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking/ copying text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', {clear = true}),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- KEYMAPS
vim.g.mapleader = " "
local map = vim.keymap.set
map("", "<Space>", "<Nop>", { desc = "reserve space for mapleader" })
map("i", "<C-c>", "<Esc>", { desc = "CtrlC acts as ESC" })
map("n", "<leader>w", ":w<CR>", { desc = "write on w" })
map("n", "<leader>o", ":update<CR> :source<CR>", { desc = "soure file" })

-- move lines in visual mode
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- diagnostic movement with brackets
map('n', '[d', vim.diagnostic.goto_prev)
map('n', ']d', vim.diagnostic.goto_next)

-- windows
map("n", "<leader>ww", "<C-W>p", { desc = "Other Window", remap = true })
map("n", "<leader>wd", "<C-W>c", { desc = "Delete Window", remap = true })
map("n", "<leader>w-", "<C-W>s", { desc = "Split Window Below", remap = true })
map("n", "<leader>w|", "<C-W>v", { desc = "Split Window Right", remap = true })
map("n", "<leader>-", "<C-W>s", { desc = "Split Window Below", remap = true })
map("n", "<leader>|", "<C-W>v", { desc = "Split Window Right", remap = true })

-- window movement
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- window resizing
map("n", "<S-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<S-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<S-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<S-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- buffer movement with shift or brackets
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map('n', '<leader>bd', '<cmd>bdelete<CR>', { desc = "Delete Buffer" })

-- Terminal Mappings --TODO fix this somehow
map("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
map("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to Left Window" })
map("t", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Go to Lower Window" })
map("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Go to Upper Window" })
map("t", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Go to Right Window" })
map("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- PACKAGES
vim.pack.add({
  { src = "https://github.com/catppuccin/nvim" },
  { src = "https://github.com/stevearc/oil.nvim" },
})

require "catppuccin".setup({ flavor = "frappe", transparent_background = false })
vim.cmd("colorscheme catppuccin")

require "oil".setup()


