return {
	{
		"mhartington/formatter.nvim",
		config = function()
			local util = require("formatter.util")

			local augroup = vim.api.nvim_create_augroup
			local autocmd = vim.api.nvim_create_autocmd
			augroup("__formatter__", { clear = false })
			autocmd("BufWritePost", {
				group = "__formatter__",
				command = ":FormatWrite",
			})

			require("formatter").setup({
				logging = false,
				log_level = vim.log.levels.WARN,
				filetype = {
					dart = { require("formatter.filetypes.dart").dartformat },
					javascript = { require("formatter.filetypes.javascript").prettier },
					lua = { require("formatter.filetypes.lua").stylua },
					["*"] = { require("formatter.filetypes.any").remove_trailing_whitespace },
				},
			})
		end,
	},
	{ "ckipp01/stylua-nvim" },
}
