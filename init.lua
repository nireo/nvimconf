-- Set highlight on search
vim.o.hlsearch = false
-- vim.o.relativenumber = true

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

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Enable usage of system clipboard.
vim.o.clipboard = "unnamedplus"

vim.o.cursorline = false
vim.o.cursorcolumn = false

-- Decrease update time
vim.o.updatetime = 100
vim.o.timeoutlen = 500
vim.wo.signcolumn = "no"
vim.o.synmaxcol = 180

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

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("i", "<C-j>", "<ESC>")
vim.keymap.set("i", "<C-f>", "<ESC>")
vim.keymap.set("n", "<leader>s", ":w!<CR>")
vim.keymap.set("n", "<leader>q", ":q!<CR>")
vim.keymap.set("n", "<leader>td", ":Trouble diagnostics<CR>")

vim.keymap.set("n", "<leader>l", "<C-w>l<CR>")
vim.keymap.set("n", "<leader>h", "<C-w>h<CR>")
vim.keymap.set("n", "<leader>j", "<C-w>j<CR>")
vim.keymap.set("n", "<leader>k", "<C-w>k<CR>")
vim.keymap.set("n", "<leader>lh", ":split<CR>")
vim.keymap.set("n", "<leader>lv", ":vsplit<CR>")

vim.keymap.set("n", "<leader>wc", ":close<cr>")
vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")

-- go error :D
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")
vim.keymap.set("n", "<leader><leader>v", function()
	if next(require("diffview.lib").views) == nil then
		vim.cmd("DiffviewOpen")
	else
		vim.cmd("DiffviewClose")
	end
end)

vim.o.backup = false
vim.o.scrolloff = 5
vim.o.swapfile = false
vim.o.fileencoding = "utf-8"
vim.o.showmode = false
vim.o.lazyredraw = true
vim.wo.wrap = true
vim.wo.linebreak = true

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	"tpope/vim-sleuth",
	{
		"pechorin/any-jump.vim",
		cmd = { "AnyJump", "AnyJumpVisual" },
		keys = {
			{ "<leader>ii", "<cmd>AnyJump<CR>", desc = "Any Jump" },
			{ "<leader>ii", "<cmd>AnyJumpVisual<CR>", mode = "x", desc = "Any Jump" },
			{ "<leader>ib", "<cmd>AnyJumpBack<CR>", desc = "Any Jump Back" },
			{ "<leader>il", "<cmd>AnyJumpLastResults<CR>", desc = "Any Jump Resume" },
		},
	},
	"slugbyte/lackluster.nvim",
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				rust = { "rustfmt", lsp_format = "fallback" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				go = { "goimports", "gofmt" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				javascriptreact = { "prettierd" },
				typescriptreact = { "prettierd" },
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				graphql = { "prettierd" },
				json = { "prettierd" },
				css = { "prettierd" },
			},
			formatters = {
				clang_format = {
					prepend_args = { "--style=file", "--fallback-style=LLVM" },
				},
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
			format_after_save = {
				lsp_format = "fallback",
			},
		},
	},
	"scalameta/nvim-metals",
	{
		"saghen/blink.cmp",
		dependencies = "rafamadriz/friendly-snippets",
		version = "v0.*",
		opts = {
			keymap = {
				preset = "enter",
				["<C-k>"] = { "select_prev", "fallback" },
				["<C-j>"] = { "select_next", "fallback" },
				["<Tab>"] = { "select_next", "fallback" },
				["<S-Tab>"] = { "select_prev", "fallback" },
			},
			appearance = {
				nerd_font_variant = "mono",
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
			signature = { enabled = true },
			cmdline = {
				enabled = false,
			},
			completion = {
				menu = {
					draw = {
						columns = { { "label", "label_description", gap = 1 }, { "kind", "source_name", grap = 1 } },
					},
				},
			},
		},
		opts_extend = { "sources.default" },
	},
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"s",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump()
				end,
				desc = "Flash",
			},
			{
				"S",
				mode = { "n", "x", "o" },
				function()
					require("flash").treesitter()
				end,
				desc = "Flash Treesitter",
			},
			{
				"r",
				mode = "o",
				function()
					require("flash").remote()
				end,
				desc = "Remote Flash",
			},
			{
				"R",
				mode = { "o", "x" },
				function()
					require("flash").treesitter_search()
				end,
				desc = "Treesitter Search",
			},
			{
				"<c-s>",
				mode = { "c" },
				function()
					require("flash").toggle()
				end,
				desc = "Toggle Flash Search",
			},
		},
	},
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
		keys = {
			{
				"<leader>st",
				function()
					Snacks.picker.todo_comments()
				end,
				desc = "Todo",
			},
			{
				"<leader>sT",
				function()
					Snacks.picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } })
				end,
				desc = "Todo/Fix/Fixme",
			},
		},
	},
	"simrat39/rust-tools.nvim",
	{
		"numToStr/Comment.nvim",
		event = { "BufReadPost", "BufNewFile" },
		opts = {},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = true,
		event = { "BufReadPost", "BufNewFile" },
		dependencies = {
			"saghen/blink.nvim",
			"glepnir/lspsaga.nvim",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
	},
	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>xx",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>xX",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
	},
	{
		"windwp/nvim-autopairs",
		opts = {},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
	},
	{
		"ray-x/go.nvim",
		dependencies = { "ray-x/guihua.lua" },
		ft = "go",
		opts = {
			go = "go",
			gofmt = "gofumpt",
			staticcheck = true,
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		event = "BufRead",
		build = ":TSUpdate",
		main = "nvim-treesitter.configs",
		opts = {
			ensure_installed = {
				"c",
				"cpp",
				"go",
				"lua",
				"rust",
				"javascript",
				"typescript",
				"hcl",
				"toml",
				"zig",
				"php",
			},

			highlight = { enable = true },
			indent = { enable = true },
		},
	},
	{
		"sindrets/diffview.nvim",
		opts = {},
	},
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			picker = { enabled = true },
			notifier = {
				enabled = true,
				timeout = 3000,
			},
		},
		keys = {
			{
				"<leader>ig",
				function()
					Snacks.picker.grep()
				end,
				desc = "Grep",
			},
			{
				"<leader>fb",
				function()
					Snacks.picker.buffers()
				end,
				desc = "Buffers",
			},
			{
				"<leader>fc",
				function()
					Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
				end,
				desc = "Find Config File",
			},
			{
				"<leader>p",
				function()
					Snacks.picker.files()
				end,
				desc = "Find Files",
			},
			{
				"<leader>fm",
				function()
					Snacks.picker.man({
						finder = "system_man",
						format = "man",
						preview = "man",
						confirm = function(picker, item)
							picker:close()
							if item then
								vim.schedule(function()
									vim.cmd("Man " .. item.ref)
								end)
							end
						end,
					})
				end,
				desc = "Find man pages",
			},
			{
				"<leader>fg",
				function()
					Snacks.picker.git_files()
				end,
				desc = "Find Git Files",
			},
			{
				"<leader>fp",
				function()
					Snacks.picker.projects()
				end,
				desc = "Projects",
			},
			{
				"<leader>fr",
				function()
					Snacks.picker.recent()
				end,
				desc = "Recent",
			},
			{
				"<leader>cR",
				function()
					Snacks.rename.rename_file()
				end,
				desc = "Rename File",
			},
			{
				"<leader>gB",
				function()
					Snacks.gitbrowse()
				end,
				desc = "Git Browse",
				mode = { "n", "v" },
			},
			{
				"<leader>gg",
				function()
					Snacks.lazygit()
				end,
				desc = "Lazygit",
			},
			{
				"gd",
				function()
					Snacks.picker.lsp_definitions()
				end,
				desc = "Goto Definition",
			},
			{
				"gD",
				function()
					Snacks.picker.lsp_declarations()
				end,
				desc = "Goto Declaration",
			},
			{
				"gr",
				function()
					Snacks.picker.lsp_references()
				end,
				nowait = true,
				desc = "References",
			},
			{
				"gI",
				function()
					Snacks.picker.lsp_implementations()
				end,
				desc = "Goto Implementation",
			},
			{
				"gy",
				function()
					Snacks.picker.lsp_type_definitions()
				end,
				desc = "Goto T[y]pe Definition",
			},
		},
	},
	performance = {
		rtp = {
			disabled_plugins = {
				"2html_plugin",
				"tohtml",
				"tutor",
				"ftplugin",
			},
		},
	},
}

local opts = {}
vim.loader.enable()

require("lazy").setup(plugins, opts)

vim.opt.completeopt = "menu,menuone,noselect"

local language_servers = { "clangd", "gopls", "rust_analyzer" }
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = language_servers,
})

local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
	return
end

local keymap = vim.keymap -- for conciseness
local on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
	keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
	keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
	keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
	keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
	keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
	keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor

	vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
		if vim.lsp.buf.format then
			vim.lsp.buf.format()
		elseif vim.lsp.buf.formatting then
			vim.lsp.buf.formatting()
		end
	end, { desc = "Format current buffer with LSP" })

	local capabilities = require("blink.cmp").get_lsp_capabilities()
end

lspconfig["gopls"].setup({
	settings = {
		gopls = {
			analyses = {
				nilness = true,
				unusedparams = true,
				unusedwrite = true,
				useany = true,
			},
			gofumpt = true,
			staticcheck = true,
		},
	},
	capabilities = capabilities,
	on_attach = on_attach,
})

local clang_capabilities = vim.lsp.protocol.make_client_capabilities()
clang_capabilities.offsetEncoding = { "utf-16" }
lspconfig["clangd"].setup({
	capabilities = clang_capabilities,
	on_attach = on_attach,
})

local servers = { "pyright", "ts_ls", "zls", "svelte" }
for _, server in ipairs(servers) do
	lspconfig[server].setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})
end

require("rust-tools").setup({
	server = {
		on_attach = on_attach,
	},
})

require("lspsaga").setup({
	move_in_saga = { prev = "<C-k>", next = "<C-j>" },
	finder_action_keys = {
		open = "<CR>",
	},
	definition_action_keys = {
		edit = "<CR>",
	},
	symbol_in_winbar = {
		false,
	},
})

require("statusline")

local metals_config = require("metals").bare_config()
metals_config.on_attach = on_attach

local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "scala", "sbt", "java" },
	callback = function()
		require("metals").initialize_or_attach(metals_config)
	end,
	group = nvim_metals_group,
})

require("lackluster").setup({
	tweak_syntax = {
		comment = "#98C379",
	},
})
vim.cmd([[colorscheme lackluster-night]])
