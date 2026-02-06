return {
	"navarasu/onedark.nvim",
	version = "v0.1.0",
	priority = 1000,
	config = function()
		require("onedark").setup({
			style = "deep", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
			transparent = true, -- Show/hide background
			term_colors = true, -- Change terminal color as per the selected theme style
			ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
			cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
			toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
			toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between
			code_style = {
				comments = "italic",
				keywords = "none",
				functions = "bold",
				strings = "none",
				variables = "none",
			},
			lualine = {
				transparent = true, -- lualine center bar transparency
			},
			colors = {}, -- Override default colors
			highlights = {}, -- Override highlight groups
			diagnostics = {
				darker = true, -- darker colors for diagnostic
				undercurl = true, -- use undercurl instead of underline for diagnostics
				background = false, -- use background color for virtual text
			},
		})
		vim.cmd.colorscheme("onedark")
	end,
}
