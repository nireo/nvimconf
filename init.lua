-- Install packer
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	is_bootstrap = true
	vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
	vim.cmd([[packadd packer.nvim]])
end

require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- Themes
	use({ "nyoom-engineering/oxocarbon.nvim" })
	use({ "aktersnurra/no-clown-fiesta.nvim" })
	use({ "rktjmp/lush.nvim" })
	use({ "kvrohit/mellow.nvim" })
	use({ "luisiacc/gruvbox-baby" })
	use("shaunsingh/seoul256.nvim")
	use("tanvirtin/monokai.nvim")
	use("ntk148v/komau.vim")
	use("mcchrish/zenbones.nvim")

	use({
		"lmburns/kimbox",
	})

	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
	})

	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- Formatting and linters.
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- Commenting
	use("numToStr/Comment.nvim")

	-- LSP settings
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/nvim-cmp")
	use({ "saadparwaiz1/cmp_luasnip" })
	use("glepnir/lspsaga.nvim")

	use({
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({})
		end,
	})

	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("onsails/lspkind.nvim")

	use("ray-x/go.nvim") -- Go support

	-- Snippets
	use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
	use("rafamadriz/friendly-snippets")

	-- Git indicators in the fringe.
	use({
		"lewis6991/gitsigns.nvim",
	})

	use("nvim-treesitter/nvim-treesitter") -- Highlight, edit, and navigate code
	use({ "nvim-treesitter/nvim-treesitter-textobjects", after = { "nvim-treesitter" } }) -- Additional textobjects for treesitter

	-- Fuzzy Finder (files, lsp, etc)
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x", requires = { "nvim-lua/plenary.nvim" } })
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	if is_bootstrap then
		require("packer").sync()
	end
end)

-- Automatically source and re-compile packer whenever you save this init.lua
local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
	command = "source <afile> | PackerCompile",
	group = packer_group,
	pattern = vim.fn.expand("$MYVIMRC"),
})

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
-- vim.o.relativenumber = true
-- vim.o.number = true

-- Backspace
vim.o.backspace = "indent,eol,start"

-- Enable mouse mode
vim.o.mouse = "a"

-- Indentation changes
vim.o.shiftwidth = 2
vim.o.tabstop = 2
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

-- Set colorscheme
vim.o.termguicolors = true
vim.o.background = "dark"

vim.g.gruvbox_baby_background_color = "dark"
vim.cmd([[ colorscheme zenbones ]])

-- Window splits
vim.o.splitright = true
vim.o.splitbelow = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("i", "<C-j>", "<ESC>")
vim.keymap.set("i", "<C-f>", "<ESC>")
vim.keymap.set("n", "<leader>s", ":w!<CR>")

vim.keymap.set("n", "<leader>p", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>l", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>n", "<cmd>Telescope live_grep<cr>")

vim.keymap.set("n", "<leader>wc", ":close<cr>")
vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")

vim.o.backup = false
vim.o.scrolloff = 5
vim.o.swapfile = false
vim.o.fileencoding = "utf-8"
vim.o.showmode = false
vim.o.lazyredraw = true
vim.o.guicursor = "n-v-c-i:block"

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

require("Comment").setup()

local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
			},
		},
	},
})

telescope.load_extension("fzf")

vim.opt.completeopt = "menu,menuone,noselect"

local cmp_setup, cmp = pcall(require, "cmp")
if not cmp_setup then
	return
end

local lspkind = require("lspkind")
local luasnip = require("luasnip")
require("luasnip/loaders/from_vscode").lazy_load()

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
		["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
		["<C-e>"] = cmp.mapping.abort(), -- close completion window
		["<CR>"] = cmp.mapping.confirm({ select = false }),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}),

	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},

	-- sources for autocompletion
	sources = cmp.config.sources({
		{ name = "nvim_lsp" }, -- lsp
		{ name = "luasnip" }, -- snippets
		{ name = "buffer" }, -- text within current buffer
		{ name = "path" }, -- file system paths
	}),

	formatting = {
		format = lspkind.cmp_format({
			mode = "symbol", -- show only symbol annotations
			maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
			ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
		}),
	},
})

local language_servers = { "clangd", "gopls", "pyright", "tsserver" }
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = language_servers,
})

local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
	return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
	return
end

local keymap = vim.keymap -- for conciseness

-- enable keybinds only for when lsp server available
local on_attach = function(client, bufnr)
	-- keybind options
	local opts = { noremap = true, silent = true, buffer = bufnr }

	-- vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]

	-- set keybinds
	keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
	-- keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
	keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
	keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
	keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
	keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
	keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
	keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
	keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
	keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
	keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor

	-- Create a command `:Format` local to the LSP buffer
	vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
		if vim.lsp.buf.format then
			vim.lsp.buf.format()
		elseif vim.lsp.buf.formatting then
			vim.lsp.buf.formatting()
		end
	end, { desc = "Format current buffer with LSP" })

	local capabilities = cmp_nvim_lsp.default_capabilities()
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
	cmd = {
		"clangd",
		"--background-index",
	},
})

lspconfig["pyright"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["tsserver"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

require("lspsaga").init_lsp_saga({
	-- keybinds for navigation in lspsaga window
	move_in_saga = { prev = "<C-k>", next = "<C-j>" },
	-- use enter to open file with finder
	finder_action_keys = {
		open = "<CR>",
	},
	-- use enter to open file with definition preview
	definition_action_keys = {
		edit = "<CR>",
	},
})

-- [[ Configure Treesitter ]]
-- See `:help nvim-treesitter`
require("nvim-treesitter.configs").setup({
	-- Add languages to be installed here that you want installed for treesitter
	ensure_installed = {
		"c",
		"cpp",
		"go",
		"lua",
		"python",
		"rust",
		"javascript",
		"typescript",
		"erlang",
		"haskell",
		"clojure",
	},

	highlight = { enable = true },
	indent = { enable = true },
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<c-space>",
			node_incremental = "<c-space>",
			-- TODO: I'm not sure for this one.
			scope_incremental = "<c-s>",
			node_decremental = "<c-backspace>",
		},
	},
	textobjects = {
		select = {
			enable = true,
			lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
			},
		},
		move = {
			enable = true,
			set_jumps = true, -- whether to set jumps in the jumplist
			goto_next_start = {
				["]m"] = "@function.outer",
				["]]"] = "@class.outer",
			},
			goto_next_end = {
				["]M"] = "@function.outer",
				["]["] = "@class.outer",
			},
			goto_previous_start = {
				["[m"] = "@function.outer",
				["[["] = "@class.outer",
			},
			goto_previous_end = {
				["[M"] = "@function.outer",
				["[]"] = "@class.outer",
			},
		},
		swap = {
			enable = true,
			swap_next = {
				["<leader>a"] = "@parameter.inner",
			},
			swap_previous = {
				["<leader>A"] = "@parameter.inner",
			},
		},
	},
})

require("nvim-surround").setup({})
local nls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

nls.setup({
	sources = {
		nls.builtins.formatting.goimports,
		nls.builtins.formatting.gofumpt,
		nls.builtins.formatting.golines,
		nls.builtins.formatting.black,
		nls.builtins.formatting.clang_format,
		nls.builtins.formatting.stylua,
		nls.builtins.formatting.prettier,
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						bufnr = bufnr,
						filter = function(client)
							return client.name == "null-ls"
						end,
					})
				end,
			})
		end
	end,
})

require("gitsigns").setup({
	signs = {
		add = { hl = "GitSignsAdd", text = "+", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
		change = { hl = "GitSignsChange", text = "/", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
		delete = { hl = "GitSignsDelete", text = "-", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
		topdelete = { hl = "GitSignsDelete", text = "-", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
		changedelete = { hl = "GitSignsChange", text = "~", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
		untracked = { hl = "GitSignsAdd", text = "+", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
	},
	linehl = false,
	signcolumn = false,
	numhl = false,
})

-- Enable go.nvim
require("go").setup({
	go = "go",
	gofmt = "gofumpt",
	max_line_len = 80,
	staticcheck = true,
	luasnip = true,
})
