vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("i", "<C-j>", "<ESC>")
vim.keymap.set("i", "<C-f>", "<ESC>")
vim.keymap.set("n", "<leader>q", ":q!<CR>")

vim.keymap.set("n", "<leader>l", "<C-w>l<CR>")
vim.keymap.set("n", "<leader>h", "<C-w>h<CR>")
vim.keymap.set("n", "<leader>j", "<C-w>j<CR>")
vim.keymap.set("n", "<leader>k", "<C-w>k<CR>")

vim.keymap.set("n", "<leader>|", "<C-w>v")
vim.keymap.set("n", "<leader>-", "<C-w>s")
vim.keymap.set("n", "<CR>", ":write!<CR>")
vim.keymap.set("n", ";", ":")
vim.keymap.set({ "n", "v" }, "go", "%")
vim.keymap.set({ "n", "v" }, "gh", "^")
vim.keymap.set({ "n", "v" }, "gl", "$")
vim.keymap.set({ "n", "v" }, "gj", "%")
vim.keymap.set("n", "<Tab>", "<C-W>w")
vim.keymap.set("n", "<S-Tab>", "<C-W>W")
vim.keymap.set("n", "<leader>t", ":terminal<CR>")
vim.keymap.set("n", "<leader>ie", ":GoIfErr<CR>") -- this reads the function signature so it makes it alot more efficient
vim.keymap.set("n", "<leader>gotf", ":GoTestFile<CR>")
vim.keymap.set("n", "<leader>gofn", ":GoTestFunc<CR>")
vim.keymap.set("n", "<leader>gofs", ":GoFillStruct<CR>")
vim.keymap.set("n", "<leader>goj", ":GoAddTag json<CR>")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
vim.keymap.set({ "v", "x" }, "J", ":move '>+1<cr>gv-gv", opts)
vim.keymap.set({ "v", "x" }, "K", ":move '<-2<cr>gv-gv", opts)
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("n", "<leader>yb", function()
	local cur = vim.api.nvim_win_get_cursor(0) -- Save current cursor position
	vim.cmd("normal! ggVGy") -- Yank the whole file
	vim.api.nvim_win_set_cursor(0, cur) -- Restore cursor position

	print("yanked whole file to system clipboard")
end)

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
vim.keymap.set("n", "<leader>df", vim.diagnostic.open_float, { desc = "Open float window to properly read diagnostic" })
