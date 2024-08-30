return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			vim.api.nvim_command("colorscheme catppuccin")

			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end,
	},
	{
		"ntk148v/habamax.nvim",
		name = "habamax",
		dependencies = { "rktjmp/lush.nvim" },
	},
}
