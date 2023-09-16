return {
    -- You can also add new plugins here as well:
    -- Add plugins, the lazy syntax
    -- "andweeb/presence.nvim",
    -- {
    --   "ray-x/lsp_signature.nvim",
    --   event = "BufRead",
    --   config = function()
    --     require("lsp_signature").setup()
    --   end,
    -- },
    {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
    },
    {
        "elkowar/yuck.vim",
        event = "VeryLazy",
        config = function()
        end
    },
    {
        'mg979/vim-visual-multi',
        event = "VeryLazy",
        config = function()
        end
    },
    {
        "LhKipp/nvim-nu",
        event = "VeryLazy",
        config = function()
            require("nu").setup({})
        end
    },
}
