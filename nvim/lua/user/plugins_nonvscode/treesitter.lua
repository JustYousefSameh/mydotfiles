return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "regex",
                "dart",
                "lua",
                "javascript",
                "tsx",
                "json",
                "html",
                "css",
                "scss",
                "yaml",
                "bash",
                "java",
                "vue",
            },
            auto_install = true,
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
                -- https://github.com/nvim-treesitter/nvim-treesitter/issues?q=RobertBrunhage+is%3Aopen
                -- https://github.com/nvim-treesitter/nvim-treesitter/issues/4945
                -- disable = { "dart" },
            },
        })
    end,
}
