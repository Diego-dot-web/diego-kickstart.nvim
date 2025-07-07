-- [[ Basic Autocommands ]]
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.cmd [[set statusline+=%{wordcount().words}\ words]]

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.java',
  callback = function()
    vim.lsp.buf.format { async = false }
  end,
})
