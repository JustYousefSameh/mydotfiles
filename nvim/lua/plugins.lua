return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			transparent_background = true,
		},
		config = function()
			require("catppuccin").setup({
				cmp = true,
				treesitter = true,
				notify = false,
				transparent_background = true,
			})
			vim.cmd.colorscheme("catppuccin")

			-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end,
	},
	{
		"ntk148v/habamax.nvim",
		name = "habamax",
		dependencies = { "rktjmp/lush.nvim" },
	},
}
