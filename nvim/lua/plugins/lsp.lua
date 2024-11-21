return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.diagnostic.config({
				virtual_text = ture,
				signs = true,
				underline = true,
				update_in_insert = false,
				severity_sort = false,
			})
			require("lspconfig").ts_ls.setup({
				on_attach = function(client, bufnr)
					vim.keymap.set("n", "<leader>fc", vim.lsp.buf.format, { buffer = bufnr })
					vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr })
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
					vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
					vim.keymap.set("n", "]g", vim.diagnostic.goto_next, { buffer = bufnr })
					vim.keymap.set("n", "[g", vim.diagnostic.goto_prev, { buffer = bufnr })
					vim.keymap.set("n", "<leader>dl", vim.diagnostic.setqflist, { buffer = bufnr })
					vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { buffer = bufnr })
				end,
			})
		end,
	},
	{ "hrsh7th/cmp-nvim-lsp" },
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local luasnip = require("luasnip")
			local cmp = require("cmp")

			cmp.setup({
				sources = {
					{ name = "nvim_lsp" },
				},
				mapping = {
					["<CR>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							if luasnip.expandable() then
								luasnip.expand()
							else
								cmp.confirm({
									select = true,
								})
							end
						else
							fallback()
						end
					end),

					["<Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						elseif luasnip.locally_jumpable(1) then
							luasnip.jump(1)
						else
							fallback()
						end
					end, { "i", "s" }),

					["<S-Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif luasnip.locally_jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end, { "i", "s" }),
				},
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
			})
		end,
	},
	{ "L3MON4D3/LuaSnip" },
}
