return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",

        },
        lazy = false,
        config = function()
            vim.diagnostic.config({
                -- virtual_text = true,
                virtual_lines = {
                    current_line = true,
                },
                -- signs = true,
                -- underline = true,
                -- update_in_insert = false,
                -- severity_sort = false,
            })

            require("mason").setup()
            require("mason-lspconfig").setup()
            local lsp = require('lspconfig')

            lsp.tailwindcss.setup {}

            lsp.volar.setup {
                filetypes = { 'vue' },
                init_options = {
                    vue = {
                        hybridMode = false,
                    },
                },
            }

            -- lsp.ts_ls.setup {
            --     init_options = {
            --         plugins = {
            --             {
            --                 name = "@vue/typescript-plugin",
            --                 location = "/home/p0wer/.local/share/nvim/mason/bin/typescript-language-server",
            --                 languages = { "javascript", "typescript", "vue" },
            --             },
            --         },
            --     },
            --     filetypes = {
            --         "javascript",
            --         "typescript",
            --         "vue",
            --     },
            --     on_attach = function(client, bufnr)
            --         vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr })
            --         vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
            --         vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
            --         vim.keymap.set("n", "]g", vim.diagnostic.goto_next, { buffer = bufnr })
            --         vim.keymap.set("n", "[g", vim.diagnostic.goto_prev, { buffer = bufnr })
            --         vim.keymap.set("n", "<leader>dl", vim.diagnostic.setqflist, { buffer = bufnr })
            --     end,
            -- }
        end,
    },
}
