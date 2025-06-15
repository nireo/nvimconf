-- Set highlight on search
vim.o.hlsearch = false

-- Backspace
vim.o.backspace = "indent,eol,start"

-- Enable mouse mode
vim.o.mouse = "a"
vim.o.guicursor = ""

-- Indentation changes
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.autoindent = true

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

vim.opt.completeopt = "menu,menuone,noselect"

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.smartindent = true

-- Enable usage of system clipboard.
vim.o.clipboard = "unnamedplus"

vim.o.cursorline = false
vim.o.cursorcolumn = false

-- Decrease update time
vim.o.updatetime = 100
vim.o.timeoutlen = 500
vim.wo.signcolumn = "no"
vim.o.synmaxcol = 120

vim.o.termguicolors = true
vim.o.background = "dark"

-- Window splits
vim.o.splitright = true
vim.o.splitbelow = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- Set leader to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g["surround_no_mapping"] = 1

vim.o.backup = false
vim.o.scrolloff = 5
vim.o.swapfile = false
vim.o.fileencoding = "utf-8"
vim.o.showmode = false
vim.o.lazyredraw = true
vim.wo.wrap = true
vim.wo.linebreak = true

vim.g.netrw_winsize = 20
vim.g.netrw_banner = 0
vim.g.netrw_list_style = 1

vim.opt.relativenumber = true
vim.opt.number = true
