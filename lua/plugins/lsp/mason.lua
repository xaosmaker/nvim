return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
  config = function()
    require("mason").setup({})


    require("mason-tool-installer").setup {
      ensure_installed = {
        "biome",
        'gopls',
        'json-to-struct',
        'lua-language-server',
        "typescript-language-server",
        'misspell',
        "prettierd",
        'shellcheck',
        'stylua',
        "tsgo",
        'vim-language-server',
      }
    }
  end
}
