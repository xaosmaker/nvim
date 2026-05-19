return {
	"saghen/blink.cmp",
	-- optional: provides snippets for the snippet source
	dependencies = { "rafamadriz/friendly-snippets" },

	-- use a release tag to download pre-built binaries
	version = "1.*",
	-- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
		-- 'super-tab' for mappings similar to vscode (tab to accept)
		-- 'enter' for enter to accept
		-- 'none' for no mappings
		--
		-- See :h blink-cmp-config-keymap for defining your own keymap
		keymap = {
			preset = "enter",
			["<TAB>"] = { "select_next", "fallback" },
			["<S-TAB>"] = { "select_prev", "fallback" },
		},

		appearance = {
			-- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
			-- Adjusts spacing to ensure icons are aligned
			nerd_font_variant = "mono",
		},
		signature = { enabled = true },
		cmdline = { completion = { ghost_text = { enabled = true } } },

		-- (Default) Only show the documentation popup when manually triggered
		completion = {
			menu = {
				draw = {
					columns = {
						{ "kind_icon", "label", "label_description", gap = 1 },
						{ "kind", "source_name", gap = 1 },
					},
				},
			},
			documentation = { auto_show = true, auto_show_delay_ms = 100 },
			list = { selection = { preselect = false, auto_insert = true } },
		},

		-- Default list of enabled providers defined so that you can extend it
		-- elsewhere in your config, without redefining it, due to `opts_extend`
		sources = {
			default = { "lsp", "dadbod", "path", "buffer", "snippets" },
			-- per_filetype = {
			-- 	sql = { "lsp", "dadbod", "buffer" },
			-- 	-- optionally inherit from the `default` sources
			-- },
			providers = {
				dadbod = { module = "vim_dadbod_completion.blink" },
			},
		},

		--
		-- See the fuzzy documentation for more information
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
