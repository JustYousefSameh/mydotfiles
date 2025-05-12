return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        -- lazy = true,
        opts = {
            transparent_background = true,
        },
        config = function()
            require("catppuccin").setup({
                flavor = 'mocha',
                -- cmp = true,
                -- treesitter = true,
                notify = true,
                term_colors = true,
                transparent_background = true,
            })
            vim.cmd.colorscheme("catppuccin")

            -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end,
    },
    {
        "dgox16/oldworld.nvim",
        lazy = true,
        priority = 1000,
        config = function()
            require("oldworld").setup({
                variant = "oled",
                integrations = { -- You can disable/enable integrations
                    alpha = true,
                    cmp = true,
                    flash = true,
                    gitsigns = true,
                    hop = false,
                    indent_blankline = true,
                    lazy = true,
                    lsp = true,
                    markdown = true,
                    mason = true,
                    navic = false,
                    neo_tree = false,
                    neorg = false,
                    noice = true,
                    notify = true,
                    rainbow_delimiters = true,
                    telescope = true,
                    treesitter = true,
                },
            })
            -- vim.cmd.colorscheme("oldworld")
        end,
    },
    {
        "ntk148v/habamax.nvim",
        name = "habamax",
        lazy = true,
        dependencies = { "rktjmp/lush.nvim" },
    },
}
