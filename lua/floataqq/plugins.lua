require("lazy").setup({
{
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require("floataqq.plugins.telescope")
    end
},
{
    'sainnhe/everforest',
    config = function()
--       require("floataqq.plugins.everforest")
    end
},
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("floataqq.plugins.treesitter")
    end
},
{
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
        require("floataqq.plugins.transparent")
    end
},
{
    'stevearc/dressing.nvim',
    opts = {},
    config = function()
        require("floataqq.plugins.dressing")
    end
},
{
    'startup-nvim/startup.nvim',
    lazy = false,
    config = function()
        require("floataqq.plugins.startup")
    end
},
-- LSP
{
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    lazy = true,
    config = false,
},
{
    'neovim/nvim-lspconfig',
    dependencies = {
        {'hrsh7th/cmp-nvim-lsp'},
    }
},
-- Autocompletion
{
    'hrsh7th/nvim-cmp',
    dependencies = {
        {'L3MON4D3/LuaSnip'}
    },
},
-- Mason
{
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
        require("mason").setup()
    end
},
{'williamboman/mason-lspconfig.nvim'}
})