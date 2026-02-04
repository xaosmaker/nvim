require("xaosmaker.core.autocmd")
require("xaosmaker.core.opts")
require("xaosmaker.core.remaps")
require("xaosmaker.lazy")


vim.diagnostic.config(
  {
    virtual_text = true,
    virtual_lines = {
      current_line = true
    },
    underline = true,



  }
)
