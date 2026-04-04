return {
	"stevearc/conform.nvim",

	config = function()
		local isBiome = require("xaosmaker.utils").file_exist("biome.json")
		local formatter = { "prettierd" }
		if isBiome > 0 then
			formatter = { "biome", "biome-organize-imports" }
		end

		require("conform").formatters.prettierd = {
			inherit = true,
		}
		require("conform").setup({

			formatters_by_ft = {

				lua = { "stylua" },
				javascript = formatter,
				javascriptreact = formatter,
				typescriptreact = formatter,
				typescript = formatter,
				go = { "gopls" },
				vue = formatter,
				nginx = { "nginxfmt" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})
	end,
}
