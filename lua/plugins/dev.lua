-- plugins related for development
return {
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
		dependencies = {
			"rafamadriz/friendly-snippets",
		},
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
		"ray-x/go.nvim",
		dependencies = { "ray-x/guihua.lua" },
		ft = "go",
		opts = {
			go = "go",
			gofmt = "gofumpt",
			staticcheck = true,
			max_line_len = 100,
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		event = "BufRead",
		build = ":TSUpdate",
		main = "nvim-treesitter.configs",
		opts = {
			ensure_installed = {
				"vimdoc",
				"ocaml",
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
				"python",
				"scala",
			},

			highlight = { enable = true },
			indent = { enable = true },
		},
	},
}
