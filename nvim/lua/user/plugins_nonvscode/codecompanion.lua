return {
    {
        "olimorris/codecompanion.nvim",
        opts = {
            strategies = {
                chat = {
                    tools = {
                        ["insert_edit_into_file"] = {
                            opts = {
                                user_confirmation = false,
                            }
                        },
                    }
                }
            }
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
    },
    {
        "MeanderingProgrammer/render-markdown.nvim",
        ft = { "markdown", "codecompanion" },
        opts = {}
    },
    {
        "echasnovski/mini.diff",
        config = function()
            local diff = require("mini.diff")
            diff.setup({
                -- Disabled by default
                source = diff.gen_source.none(),
            })
        end,
        -- This Lua file is currently empty. Add your Lua code below.

    },
    {
        "HakonHarnes/img-clip.nvim",
        opts = {
            filetypes = {
                codecompanion = {
                    prompt_for_file_name = false,
                    template = "[Image]($FILE_PATH)",
                    use_absolute_path = true,
                },
            },
        },
    },
}
