if vim.fn.executable("ollama") == 1 then
	return {
		"olimorris/codecompanion.nvim",
		version = "^18.0.0",
		opts = {},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("codecompanion").setup({
				strategies = {
					chat = {
						adapter = "ollama",
					},
					inline = {
						adapter = "ollama",
					},
					agent = {
						adapter = "ollama",
					},
				},
				adapters = {
					ollama = function()
						return require("codecompanion.adapters").extend("ollama", {
							name = "qwen3-coder-next:cloud",
							schema = {
								model = {
									default = "qwen3-coder-next:cloud",
								},
							},
						})
					end,
				},
			})
		end,
	}
else
	return {}
end
