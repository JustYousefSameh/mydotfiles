return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        bigfile = { enabled = true },
        dashboard = { enabled = true },
        explorer = { enabled = false },
        indent = { enabled = false },
        input = { enabled = true },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        scope = { enabled = true },
        scroll = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = true },
        picker = {
            enabled = true,
            prompt = "",
            sources = {},
            focus = "input",
            matcher = {
                fuzzy = true,          -- use fuzzy matching
                smartcase = true,      -- use smartcase
                ignorecase = true,     -- use ignorecase
                sort_empty = false,    -- sort results when the search string is empty
                filename_bonus = true, -- give bonus for matching file names (last part of the path)
                file_pos = true,       -- support patterns like `file:line:col` and `file:line`
                -- the bonusses below, possibly require string concatenation and path normalization,
                -- so this can have a performance impact for large lists and increase memory usage
                cwd_bonus = true,      -- give bonus for matching files in the cwd
                frecency = false,      -- frecency bonus
                history_bonus = false, -- give more weight to chronological order
            },
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
            "<leader>e",
            function()
                local api = require("nvim-tree.api")
                api.tree.toggle()
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
