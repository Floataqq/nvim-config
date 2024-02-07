local M = {}

-- sources for autocompletion
M.cmp_sources = {
  { name = "path" },
  { name = "nvim_lsp" },
  { name = "nvim_lua" },
  { name = "luasnip", keyword_length = 2 },
  { name = "buffer",  keyword_length = 3 },
}

-- passed to lsp_zero.setup_servers()
M.lsps = {
  "lua_ls",
  "rust_analyzer",
}

-- you can add any other configuration here; it's better to not modify the core

return M
