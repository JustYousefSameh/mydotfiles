return {
	"nvim-telescope/telescope.nvim",
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader> ", builtin.find_files, {})
		vim.keymap.set("n", "C-p", builtin.git_files, {})
		vim.keymap.set("n", "<leader>ps", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
		require("telescope").setup({
			defaults = {
				file_sorter = require("telescope.sorters").get_fzy_sorter,
				file_previewer = require("telescope.previewers").vim_buffer_cat.new,
				grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
				qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
				mappings = {
					i = {
						["<C-x>"] = false,
					},
				},
			},
			extensions = {
				fzy_native = {
					override_generic_sorter = false,
					override_file_sorter = true,
				},
				["ui-select"] = {
					specific_opts = {
						codeactions = false,
					},
				},
			},
		})
	end,
	dependencies = {
		"nvim-telescope/telescope-fzy-native.nvim",
		"nvim-telescope/telescope-live-grep-args.nvim",

		-- Allows using telescope for things like code action (handy for searching)
		"nvim-telescope/telescope-ui-select.nvim",
	},
}
