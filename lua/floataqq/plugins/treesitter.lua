local configs = require("nvim-treesitter.configs")

configs.setup({
    ensure_installed = { "c", "lua", "javascript", "html", "cpp", "python", "haskell", "ocaml" , "css", "json"},
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },  
})
