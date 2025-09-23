return {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = {
		".luarc.json",
		".luarc.jsonc",
		".luacheckrc",
		".stylua.toml",
		"stylua.toml",
		"selene.toml",
		"selene.yml",
		".git",
	},
	settings = {
		Lua = {
			runtime = {
				-- Use LuaJIT for Neovim
				version = "LuaJIT",
			},
			diagnostics = {
				-- Recognize the `vim` global
				globals = { "vim", "describe", "it", "before_each", "after_each", "pending" },
			},
		},
		workspace = {
			-- Make the server aware of Neovim runtime files
			library = vim.api.nvim_get_runtime_file("", true),
			checkThirdParty = false,
		},
		telemetry = {
			enable = false,
		},
	},
}
