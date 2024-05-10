local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- add 10 windows in harpoon 
for i = 1, 10 do
	vim.keymap.set("n", string.format("<A-%d>", i), function() ui.nav_file(i) end)
end
