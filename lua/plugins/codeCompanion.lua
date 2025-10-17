return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		-- NOTE: The log_level is in `opts.opts`
		strategies = {
			chat = {
				adapter = "copilot",
				model = "gpt-4.1",
			},
		},

		opts = {
			log_level = "DEBUG", -- or "TRACE"
		},
	},
}
