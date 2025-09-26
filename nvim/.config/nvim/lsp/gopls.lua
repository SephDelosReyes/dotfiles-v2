return {
  name = 'gopls',
  cmd = { 'gopls' },
  filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
  settings = {
    gopls = {
      usePlaceholders = true,
      analyses = {
        unusedvariable = true,
      },
    },
  },
}
