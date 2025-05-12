return {
    {
        "akinsho/flutter-tools.nvim",
        lazy = false,
        dependencies = {
            'saghen/blink.cmp',
            "nvim-lua/plenary.nvim",
            "stevearc/dressing.nvim", -- optional for vim.ui.select
        },
        config = function()
            require("flutter-tools").setup({
                decorations = {
                    statusline = {
                        -- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
                        -- this will show the current version of the flutter app from the pubspec.yaml file
                        app_version = true,
                        -- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
                        -- this will show the currently running device if an application was started with a specific
                        -- device
                        device = true,
                        -- set to true to be able use the 'flutter_tools_decorations.project_config' in your statusline
                        -- this will show the currently selected project configuration
                        project_config = true,
                    },
                },
                widget_guides = {
                    enabled = true,
                },
                lsp = {
                    color = { -- show the derived colours for dart variables
                        enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
                        background = false, -- highlight the background
                        background_color = nil, -- required, when background is transparent (i.e. background_color = { r = 19, g = 17, b = 24},)
                        foreground = false, -- highlight the foreground
                        virtual_text = true, -- show the highlight using virtual text
                        virtual_text_str = "■", -- the virtual text character to highlight
                    },
                    on_attach = function(client, bufnr)
                        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr })
                        -- vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
                        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
                        vim.keymap.set("n", "]g", vim.diagnostic.goto_next, { buffer = bufnr })
                        vim.keymap.set("n", "[g", vim.diagnostic.goto_prev, { buffer = bufnr })
                        -- vim.keymap.set("n", "<leader>dl", vim.diagnostic.setqflist, { buffer = bufnr })
                        vim.keymap.set("n", "<leader>k", vim.diagnostic.open_float, { buffer = bufnr })
                    end,
                    settings = {
                        showTodos = true,
                        completeFunctionCalls = true,
                        analysisExcludedFolders = vim.fn.expand("C:/Users/p0wer/AppData/Local/Pub/Cache"),
                        renameFilesWithClasses = "prompt", -- "always"
                        enableSnippets = true,
                        updateImportsOnRename = true,      -- Whether to update imports and other directives when files are renamed. Required for `FlutterRename` command.
                    }
                },
            })
        end,
    },
}
