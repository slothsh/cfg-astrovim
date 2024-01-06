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
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        dependencies = { "nvim-lua/plenary.nvim" },
        event = "VeryLazy",
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.dirman"] = { -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            notes = "/home/slothsh/Notes",
                            },
                        },
                        default_workspace = "notes",
                    },
                },
            }
        end,
    },
    {
        "xiyaowong/telescope-emoji.nvim",
        event = "VeryLazy",
        config = function()
            require("telescope").setup({
                extensions = {
                    emoji = {
                        action = function(emoji)
                            -- argument emoji is a table.
                            -- {name="", value="", cagegory="", description=""}

                            vim.fn.setreg("*", emoji.value)
                            print([[Press p or "*p to paste this emoji]] .. emoji.value)

                            -- insert emoji when picked
                            vim.api.nvim_put({ emoji.value }, 'c', false, true)
                        end,
                    }
                },
            })
        end
    }
}
