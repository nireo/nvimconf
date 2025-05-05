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
vim.keymap.set("n", "<leader>q", ":q!<CR>")

vim.keymap.set("n", "<leader>l", "<C-w>l<CR>")
vim.keymap.set("n", "<leader>h", "<C-w>h<CR>")
vim.keymap.set("n", "<leader>j", "<C-w>j<CR>")
vim.keymap.set("n", "<leader>k", "<C-w>k<CR>")

vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<CR>", ":write!<CR>")
vim.keymap.set("n", ";", ":")
vim.keymap.set({ "n", "v" }, "go", "%")
vim.keymap.set({ "n", "v" }, "gh", "^")
vim.keymap.set({ "n", "v" }, "gl", "$")
vim.keymap.set({ "n", "v" }, "gj", "%")
vim.keymap.set("n", "<Tab>", "<C-W>w")
vim.keymap.set("n", "<S-Tab>", "<C-W>W")

-- go error :D
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
vim.keymap.set({ "v", "x" }, "J", ":move '>+1<cr>gv-gv", opts)
vim.keymap.set({ "v", "x" }, "K", ":move '<-2<cr>gv-gv", opts)

-- show search results in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "dd", function()
	if vim.fn.getline("."):match("^%s*$") then
		return '"_dd'
	end
	return "dd"
end, { expr = true })

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic error message" })
vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

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

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

vim.lsp.config["gopls"] = {
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	settings = {
		analyses = {
			nilness = true,
			unusedparams = true,
			unusedwrite = true,
			useany = true,
		},
		gofumpt = true,
		staticcheck = true,
	},
	root_markers = { "go.mod", ".git" },
}

vim.lsp.config["clangd"] = {
	cmd = { "clangd", "--offset-encoding=utf-16" },
	filetypes = { "c", "cpp" },
	root_markers = { ".git" },
}

vim.lsp.config["pyright"] = {
	cmd = { "pyright-langserver", "--stdio" },
	filetypes = { "python" },
	root_markers = {
		"pyproject.toml",
		"setup.py",
		"setup.cfg",
		"requirements.txt",
		"Pipfile",
		".git",
	},
}

vim.lsp.config["rust-analyzer"] = {
	cmd = { "rust-analyzer" },
	filetypes = { "rust" },
	root_markers = { "Cargo.toml", ".git" },
}

vim.lsp.config["ts_ls"] = {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
	},
	root_markers = { "tsconfig.json", "jsconfig.json", "package.json", ".git" },
}

vim.lsp.config["lua_ls"] = {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
}

local servers = { "gopls", "clangd", "pyright", "rust-analyzer", "ts_ls", "lua_ls" }
for _, server in ipairs(servers) do
	vim.lsp.enable(server)
end

local plugins = {
	"tpope/vim-sleuth",
	{
		"pechorin/any-jump.vim", -- fast go to dev in a lot of languages
		cmd = { "AnyJump", "AnyJumpVisual" },
		keys = {
			{ "<leader>ii", "<cmd>AnyJump<CR>", desc = "Any Jump" },
			{ "<leader>ii", "<cmd>AnyJumpVisual<CR>", mode = "x", desc = "Any Jump" },
			{ "<leader>ib", "<cmd>AnyJumpBack<CR>", desc = "Any Jump Back" },
			{ "<leader>il", "<cmd>AnyJumpLastResults<CR>", desc = "Any Jump Resume" },
		},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				rust = { "rustfmt", lsp_format = "fallback" },
				go = { "goimports", "gofmt" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				json = { "prettier" },
				css = { "prettier" },
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
						columns = { { "label", "label_description", gap = 1 }, { "kind" } },
					},
				},

				documentation = {
					auto_show = true,
					auto_show_delay_ms = 200,
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
		},
	},
	{
		"numToStr/Comment.nvim",
		event = { "BufReadPost", "BufNewFile" },
		opts = {},
	},
	{
		"williamboman/mason.nvim",
		opts = {},
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
		"nvim-orgmode/orgmode",
		event = "VeryLazy",
		ft = { "org" },
		config = function()
			require("orgmode").setup({
				org_agenda_files = "~/org/**/*",
				org_default_notes_file = "~/org/refile.org",
			})
		end,
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
				"python",
				"scala",
			},

			highlight = { enable = true },
			indent = { enable = true },
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
	},
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			picker = {
				enabled = true,
				layout = {
					preset = "ivy",
				},
			},
			notifier = {
				enabled = true,
				timeout = 3000,
			},
			terminal = {},
		},
		keys = {
			{
				"<leader>/",
				function()
					Snacks.picker.grep()
				end,
				desc = "Grep",
			},
			{
				"<c-/>",
				function()
					Snacks.terminal()
				end,
				desc = "Toggle Terminal",
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
				"<leader>cR",
				function()
					Snacks.rename.rename_file()
				end,
				desc = "Rename File",
			},
			{
				"<leader>gg",
				function()
					Snacks.lazygit()
				end,
				desc = "Lazygit",
			},
			{
				"<leader>gb",
				function()
					Snacks.picker.git_branches({
						layout = "select",
					})
				end,
				desc = "Branches",
			},
			{
				"<S-h>",
				function()
					Snacks.picker.buffers({
						on_show = function()
							vim.cmd.stopinsert()
						end,
						finder = "buffers",
						format = "buffer",
						hidden = false,
						unloaded = true,
						current = true,
						sort_lastused = true,
						win = {
							input = {
								keys = {
									["d"] = "bufdelete",
								},
							},
							list = { keys = { ["d"] = "bufdelete" } },
						},
					})
				end,
				desc = "[P]Snacks picker buffers",
			},
			{
				"gd",
				function()
					Snacks.picker.lsp_definitions()
				end,
				desc = "Goto Definition",
			},
			{
				"<leader>sd",
				function()
					Snacks.picker.diagnostics()
				end,
				desc = "Diagnostics",
			},
			{
				"<leader>sD",
				function()
					Snacks.picker.diagnostics_buffer()
				end,
				desc = "Diagnostics",
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
vim.opt.relativenumber = true
vim.opt.number = true
vim.cmd.colorscheme("less")

vim.diagnostic.config({
	virtual_text = true,
})
