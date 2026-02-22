vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = " show diagnostics for line" })
vim.keymap.set("n", "\\", "<cmd>Ex<CR>")

vim.keymap.set("v", "<leader>aa", function()
	vim.cmd("CodeCompanionChat")
	vim.schedule(function()
		local file = vim.fn.stdpath("config") .. "/data/llm-replace-block-only.txt"
		local data = vim.fn.readfile(file)
		vim.api.nvim_buf_set_lines(0, -1, -1, false, data)
		vim.cmd("normal! G")
	end)
end, { desc = "Send selected text to CodeCompanionChat and add custom command" })
