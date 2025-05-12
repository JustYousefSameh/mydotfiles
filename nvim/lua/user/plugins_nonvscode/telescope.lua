return {
    "nvim-telescope/telescope.nvim",
    config = function()
        local builtin = require("telescope.builtin")
        -- vim.keymap.set("n", "<leader>f", builtin.find_files, {})
        -- vim.keymap.set("n", "C-p", builtin.git_files, {})
        -- vim.keymap.set("n", "<leader>ps", function()
        -- builtin.grep_string({ search = vim.fn.input("Grep > ") })
        -- end)
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
        require('telescope').load_extension('fzy_native')
    end,
    dependencies = {
        "nvim-telescope/telescope-fzy-native.nvim",
        "nvim-telescope/telescope-live-grep-args.nvim",
        "nvim-telescope/telescope-ui-select.nvim",
    },
}
