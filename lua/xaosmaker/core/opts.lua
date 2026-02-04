
vim.opt.completeopt = { "menuone", "noselect", "popup", "menu", "noinsert" }
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- make text dont wrap in line
vim.opt.wrap = false

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true


-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Save undo history
vim.opt.undofile = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"
-- -- Decrease update time
-- vim.opt.updatetime = 250
-- -- Decrease mapped sequence wait time
-- vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- colorcolumn show at 80 chars
vim.opt.colorcolumn = "80"

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
-- backspace
vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register


-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"
vim.opt.termguicolors = true
