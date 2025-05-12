return {
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                lua = { lsp_format },
                java = { lsp_format },
                dart = { lsp_format },
                vue = { lsp_format },
                xml = { "xmlformatter" }
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_format = "fallback",
            },
        }
    }
    -- {
    --     "elentok/format-on-save.nvim",
    --     config = function()
    --         local format_on_save = require("format-on-save")
    --         local formatters = require("format-on-save.formatters")
    --
    --         format_on_save.setup({
    --             exclude_path_patterns = {
    --                 "/node_modules/",
    --                 ".local/share/nvim/lazy",
    --             },
    --             formatter_by_ft = {
    --                 dart = formatters.lsp,
    --                 lua = formatters.lsp,
    --                 vue = formatters.lsp,
    --                 java = formatters.lsp,
    --                 xml = formatters.xmlformatter,
    --             }
    --         })
    --     end,
    -- }
    -- {
    -- 	"mhartington/formatter.nvim",
    -- 	config = function()
    -- 		local util = require("formatter.util")
    --
    -- 		local augroup = vim.api.nvim_create_augroup
    -- 		local autocmd = vim.api.nvim_create_autocmd
    -- 		augroup("__formatter__", { clear = false })
    -- 		autocmd("BufWritePost", {
    -- 			group = "__formatter__",
    -- 			command = ":FormatWrite",
    -- 		})
    --
    -- 		require("formatter").setup({
    -- 			logging = false,
    -- 			log_level = vim.log.levels.WARN,
    -- 			filetype = {
    -- 				dart = { require("formatter.filetypes.dart").dartformat },
    -- 				javascript = { require("formatter.filetypes.javascript").jsbeautify },
    -- 				lua = { require("formatter.filetypes.lua").stylua },
    -- 			},
    -- 		})
    -- 	end,
    -- },
    -- { "ckipp01/stylua-nvim" },
}
