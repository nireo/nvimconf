local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{
		"norcalli/nvim-colorizer.lua",
		lazy = true,
	},
	{
		"preservim/tagbar",
		lazy = true,
	},
	{
		"mcchrish/zenbones.nvim",
		dependencies = "rktjmp/lush.nvim",
	},
	{
		"nvim-tree/nvim-web-devicons",
		lazy = true,
	},
	"savq/melange-nvim",
	"windwp/nvim-autopairs",
	{
		"folke/zen-mode.nvim",
	},
	{
		"folke/todo-comments.nvim",
		dependencies = "nvim-lua/plenary.nvim",
	},
	{
		"simrat39/rust-tools.nvim",
	},
	{
		"numToStr/Comment.nvim",
		event = { "BufReadPost", "BufNewFile" },
	},
	{
		"neovim/nvim-lspconfig",
		lazy = true,
		event = { "BufReadPost", "BufNewFile" },
		dependencies = {
			"glepnir/lspsaga.nvim",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
	},
	{
		"akinsho/toggleterm.nvim",
		cmd = "ToggleTerm",
		lazy = true,
		version = "*",
	},
	{
		"hrsh7th/nvim-cmp",
		event = { "InsertEnter", "CmdlineEnter" },
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip",
		},
	},
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	"onsails/lspkind.nvim",
	"ggandor/leap.nvim",
	{
		"folke/trouble.nvim",
		lazy = true,
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		config = function()
			require("which-key").setup({})
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = "rafamadriz/friendly-snippets",
		version = "2.*",
		build = "make install_jsregexp",
	},
	{
		"ray-x/go.nvim",
		dependencies = { "ray-x/guihua.lua" },
		ft = "go",
	},
	{
		"nvim-treesitter/nvim-treesitter",
		event = "BufRead",
	},
	{
		"nvim-telescope/telescope.nvim",
		lazy = true,
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"phaazon/hop.nvim",
		branch = "v2",
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require("hop").setup({})
		end,
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

vim.o.number = true

-- Set highlight on search
vim.o.hlsearch = false

-- Backspace
vim.o.backspace = "indent,eol,start"

-- Enable mouse mode
vim.o.mouse = "a"
vim.o.guicursor = ""

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

vim.g["surround_no_mapping"] = 1

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("i", "<C-j>", "<ESC>")
vim.keymap.set("i", "<C-f>", "<ESC>")
vim.keymap.set("n", "<leader>s", ":w!<CR>")
vim.keymap.set("n", "<leader>q", ":q!<CR>")
vim.keymap.set("n", "<leader>td", ":TroubleToggle<CR>")
vim.keymap.set("n", "<leader>tt", ":ToggleTerm<CR>")

vim.keymap.set("n", "<leader>l", "<C-w>l<CR>")
vim.keymap.set("n", "<leader>h", "<C-w>h<CR>")
vim.keymap.set("n", "<leader>j", "<C-w>j<CR>")
vim.keymap.set("n", "<leader>k", "<C-w>k<CR>")

vim.keymap.set("n", "<leader>p", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>b", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>g", "<cmd>Telescope live_grep<cr>")

vim.keymap.set("n", "<leader>wc", ":close<cr>")
vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")

-- Run a single suite test. Similar to VSCODE
vim.keymap.set("n", "<leader>ms", "<cmd>GoTestFunc -a testify.m<cr>")
vim.keymap.set("n", "<leader>mt", "<cmd>GoTestFunc<cr>")
vim.keymap.set("n", "<leader>mf", "<cmd>GoTestPkg<cr>")

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
		fields = { "kind", "abbr", "menu" },
		format = function(entry, vim_item)
			local kind = lspkind.cmp_format({
				symbol_map = { Copilot = "", Codeium = "", Snippet = "", Keyword = "", Text = "" },
				preset = "codicons",
				maxwidth = 30,
			})(entry, vim_item)
			local strings = vim.split(vim_item.kind, "%s+", { trimempty = true })
			kind.kind = " " .. string.format("%s ", strings[1], strings[2]) .. " "
			return kind
		end,
	},

	window = {
		documentation = {
			winhighlight = "Normal:Pmenu,FloatBorder:PmenuBorder,CursorLine:PmenuSel,Search:None",
			scrollbar = false,
			col_offset = 0,
		},
		completion = {
			winhighlight = "Normal:Pmenu,FloatBorder:PmenuBorder,CursorLine:PmenuSel,Search:None",
			scrollbar = false,
			col_offset = 0,
			side_padding = 0,
		},
	},
	experimental = {
		ghost_text = true,
		native_menu = false,
	},
})

local language_servers = { "clangd", "gopls", "tsserver", "rust_analyzer" }
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
	keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
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
})

lspconfig["tsserver"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["pyright"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

-- Setup for rust development
local rt = require("rust-tools")
rt.setup({
	server = {
		on_attach = function(_, bufnr)
			-- Hover actions
			vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
			-- Code action groups
			vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
		end,
	},
})

require("lspsaga").setup({
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

require("nvim-treesitter.configs").setup({
	-- Add languages to be installed here that you want installed for treesitter
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

local nls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

nls.setup({
	sources = {
		nls.builtins.formatting.goimports,
		nls.builtins.formatting.gofumpt,
		nls.builtins.formatting.clang_format,
		nls.builtins.formatting.stylua,
		nls.builtins.formatting.black,
		nls.builtins.formatting.prettier,
		nls.builtins.formatting.rustfmt,
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

-- Enable go.nvim
require("go").setup({
	go = "go",
	gofmt = "gofumpt",
	max_line_len = 200,
	staticcheck = true,
	luasnip = true,
})

require("leap").add_default_mappings()
require("trouble").setup()
require("colorizer").setup()

local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end

toggleterm.setup({
	size = 20,
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	persist_size = true,
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})

function _G.set_terminal_keymaps()
	local opts = { noremap = true }
	vim.api.nvim_buf_set_keymap(0, "t", "<esc>", [[<C-\><C-n>]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "jk", [[<C-\><C-n>]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
end

require("todo-comments").setup({})

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
vim.cmd("colorscheme melange")

local hop = require("hop")
local directions = require("hop.hint").HintDirection
vim.keymap.set("", "f", function()
	hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set("", "F", function()
	hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set("", "t", function()
	hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, { remap = true })
vim.keymap.set("", "T", function()
	hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, { remap = true })
