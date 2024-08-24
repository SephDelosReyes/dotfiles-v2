return {
  'echasnovski/mini.statusline',
  version = '*',
  config = function()
    require('mini.statusline').setup {
      section_location = '%2l:%-2v',
    }
  end,
}
