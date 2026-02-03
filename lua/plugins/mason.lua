return {
  {"mason-org/mason.nvim",config=true},
 'WhoIsSethDaniel/mason-tool-installer.nvim',
    opts = {},
  config = function()
    require("mason-tool-installer.nvim").setup{
      ensure_installed={

      'lua-language-server',
    'vim-language-server',
    'stylua',
    'shellcheck',
    'gopls',
    'json-to-struct',
    'misspell',
    }}
  end
}
