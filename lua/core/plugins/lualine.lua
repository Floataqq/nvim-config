local theme = require("lualine.themes.everforest")

theme.inactive.c.bg = nil
theme.visual.c.bg = nil
theme.replace.c.bg = nil
theme.normal.c.bg = nil
theme.insert.c.bg = nil
theme.command.c.bg = nil

require("lualine").setup({
  options = {
    icons_enabled = false,
    theme = theme,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = {},
    lualine_c = { "branch", "filename", "diff", "diagnostics" },
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = {},
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = { "mode" },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { "filename" },
  },
})
