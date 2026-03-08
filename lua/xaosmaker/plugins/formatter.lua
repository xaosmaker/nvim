return {
	"stevearc/conform.nvim",

	config = function()
		local isBiome = require("xaosmaker.utils").file_exist("biome.js")
		local formatter = "prettierd"
		if isBiome then
			formatter = "biome"
		end

		require("conform").formatters.prettierd = {
			inherit,
		}
		require("conform").setup({

			formatters_by_ft = {

				lua = { "stylua" },
				javascript = { formatter, stop_after_first = true },
				javascriptreact = { formatter, stop_after_first = true },
				typescriptreact = { formatter, stop_after_first = true },
				typescript = { formatter, stop_after_first = true },
				go = { "gopls" },
				vue = { formatter, stop_after_first = true },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})
	end,
}
