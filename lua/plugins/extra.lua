return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		opts = {},
	},
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		-- copilot is often really bad but sometimes it saves a bit of time, so I guess its worth it
		"github/copilot.vim",
		cmd = "Copilot",
		keys = {
			vim.keymap.set("n", "<leader>ce", ":Copilot enable<CR>", { desc = "Toggle Copilot" }),
			vim.keymap.set("n", "<leader>cd", ":Copilot disable<CR>", { desc = "Toggle Copilot" }),
		},
		config = function()
			vim.g.copilot_enabled = false
		end,
	},
	"kevinhwang91/nvim-bqf",
	{
		"obsidian-nvim/obsidian.nvim",
		version = "*", -- recommended, use latest release instead of latest commit
		ft = "markdown",
		opts = {
			workspaces = {
				{
					name = "personal",
					path = "~/vault/vault",
				},
			},
			new_notes_location = "main notes",
			templates = {
				subdir = "templates",
				date_format = "%Y-%m-%d",
				time_format = "%H:%M:%S",
			},
			mappings = {
				-- overrides the 'gf' mapping to work on markdown/wiki links within your vault
				["gf"] = {
					action = function()
						return require("obsidian").util.gf_passthrough()
					end,
					opts = { noremap = false, expr = true, buffer = true },
				},
			},
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
		"stevearc/oil.nvim",
		opts = {},
		lazy = false,
	},
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			picker = {
				enabled = true,
				layout = {
					preview = false,
					preset = "ivy",
					layout = { position = "bottom" },
				},
			},
			notifier = {
				enabled = true,
				timeout = 3000,
			},
		},
		keys = {
			{
				"gr",
				function()
					Snacks.picker.grep()
				end,
				desc = "Grep",
			},
			{
				"gw",
				function()
					Snacks.picker.grep_word()
				end,
				desc = "Grep",
			},
			{
				"<leader>cR",
				function()
					Snacks.rename.rename_file()
				end,
				desc = "Rename File",
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
		},
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
		},
	},
}
