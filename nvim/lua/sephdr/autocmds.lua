-- [[ Basic Autocommands ]]
--  See :help lua-guide-autocommands

-- Changes current working directory to current folder
vim.cmd [[autocmd BufEnter * silent! lcd %:p:h]]
vim.cmd 'set colorcolumn=100'

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
