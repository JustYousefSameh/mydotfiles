return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        bigfile = { enabled = true },
        dashboard = { enabled = true },
        explorer = { enabled = true },
        indent = {
            enabled = true,
            indent = {
                priority = 1,
                enabled = true,       -- enable indent guides
                char = "│",
                only_scope = false,   -- only show indent guides of the scope
                only_current = false, -- only show indent guides in the current window
                hl = "SnacksIndent", ---@type string|string[] hl groups for indent guides
                -- can be a list of hl groups to cycle through
                -- hl = {
                --     "SnacksIndent1",
                --     "SnacksIndent2",
                --     "SnacksIndent3",
                --     "SnacksIndent4",
                --     "SnacksIndent5",
                --     "SnacksIndent6",
                --     "SnacksIndent7",
                --     "SnacksIndent8",
                -- },
            },
        },
        input = { enabled = true },
        notifier = { enabled = false },
        quickfile = { enabled = true },
        scope = { enabled = false },
        scroll = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = true },
        scratch = {
            enabled = true,
            layout = {
                layout =
                {
                    width = 100,
                    height = 30,
                    bo = { buftype = "", buflisted = false, bufhidden = "hide", swapfile = false },
                    minimal = false,
                    noautocmd = false,
                    -- position = "right",
                    zindex = 20,
                    wo = { winhighlight = "NormalFloat:Normal" },
                    border = "none",
                    title_pos = "center",
                    footer_pos = "center",
                }
            }
        },
        picker = {
            enabled = true,
            -- layout = {
            --     layout = {
            --         box = "horizontal",
            --         width = 0.8,
            --         min_width = 120,
            --         height = 0.8,
            --         border = "solid",
            --         {
            --             box = "vertical",
            --             { win = "input", height = 1,     border = "none" },
            --             { win = "list",  border = "none" },
            --         },
            --         { win = "preview", border = "none", width = 0.5 },
            --     },
            -- }
        }
    },
    keys = {
        {
            "<leader>f",
            function()
                Snacks.picker.files(opts)
            end,
            desc = "Find Files",
        },
        {
            "<leader>,",
            function()
                Snacks.picker.buffers()
            end,
            desc = "Buffers",
        },
        {
            "<leader>S",
            function()
                Snacks.scratch()
            end,
        },
        {
            "<leader>e",
            function()
                Snacks.explorer()
            end,
            desc = "File Explorer",
        },
        {
            "gd",
            function()
                Snacks.picker.lsp_definitions()
            end,
            desc = "Goto Definition",
        },
        {
            "gD",
            function()
                Snacks.picker.lsp_declarations()
            end,
            desc = "Goto Declaration",
        },
        {
            "gr",
            function()
                Snacks.picker.lsp_references()
            end,
            nowait = true,
            desc = "References",
        },
        {
            "gI",
            function()
                Snacks.picker.lsp_implementations()
            end,
            desc = "Goto Implementation",
        },
        {
            "gy",
            function()
                Snacks.picker.lsp_type_definitions()
            end,
            desc = "Goto T[y]pe Definition",
        },
        {
            "<leader>ss",
            function()
                Snacks.picker.lsp_symbols()
            end,
            desc = "LSP Symbols",
        },
        {
            "<leader>sS",
            function()
                Snacks.picker.lsp_workspace_symbols()
            end,
            desc = "LSP Workspace Symbols",
        },
        {
            "<leader>sd",
            function()
                Snacks.picker.diagnostics()
            end,
            desc = "Diagnostics",
        },
    },
    init = function()
        vim.g.snacks_animate = false
    end,
}
