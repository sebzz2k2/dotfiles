local function format_document()
  vim.cmd('CocCommand prettier.forceFormatDocument')
end
vim.api.nvim_create_user_command('Prettier', format_document, {})
