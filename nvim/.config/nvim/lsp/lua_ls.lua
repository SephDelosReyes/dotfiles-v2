return {
  name = 'lua_ls',
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim', 'love' },
      },
      workspace = {
        library = vim.list_extend(vim.api.nvim_get_runtime_file('', true), {
          vim.fn.expand '${3rd}/love2d/library',
        }),
        checkThirdParty = false,
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
