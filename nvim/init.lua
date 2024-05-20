require("sebin")

vim.opt.number = true
vim.opt.relativenumber = true

-- spell checking
vim.opt.spelllang = "en_us"
vim.opt.spell = true

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = "unnamedplus"

-- tab settings
vim.opt["tabstop"] = 2
vim.opt["shiftwidth"] = 2
