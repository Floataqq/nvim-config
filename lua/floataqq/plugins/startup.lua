local splashes = require("floataqq.util.splashes")
local function get_splash()
    local w = vim.api.nvim_win_get_width(0)
    if w > #splashes.doom[1] + 4 then
        return splashes.doom
    elseif w > 40 then 
        return splashes.goose
    else 
        return {}
    end
end

require("startup").setup({
    -- every line should be same width without escaped \
    header = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = get_splash(),
        highlight = "Statement",
        default_color = "",
        oldfiles_amount = 0,
    },
    -- name which will be displayed and command
    body = {
        type = "mapping",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Basic Commands",
        margin = 5,
        content = {
            { "File Search", "Telescope find_files", "f" },
            { "Live grep", "Telescope live_grep", "g" },
            { "New File", "lua require'startup'.new_file()", "n" },
            { "Colorschemes", "Telescope colorschemes", "c" },
            { "Open git repo here", "Telescope git_files", "p" },
            { "Quit", "q!", "q"}
        },
        highlight = "String",
        default_color = "",
        oldfiles_amount = 0,
    },
    footer = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Footer",
        margin = 5,
        content = { require("floataqq.util.citations").get() },
        highlight = "Number",
        default_color = "",
        oldfiles_amount = 0,
    },

    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = { 1, 3, 3, 0 },
    },
    mappings = {
        execute_command = "<CR>",
        open_file = "o",
        open_file_split = "<c-o>",
        open_section = "<TAB>",
        open_help = "?",
    },
    colors = {
        background = "#1f2227",
        folded_section = "#56b6c2",
    },
    parts = { "header", "body", "footer" },
})
