local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)

 lsp_zero.default_keymaps({buffer = bufnr})

 vim.keymap.set('n', '<leader>ca',  vim.lsp.buf.code_action ,{buffer = bufnr} )

end)

require'lspconfig'.dartls.setup{}
 

--- in your own config you should replace `example_server`
--- with the name of a language server you have installed
-- here you can setup the anguage servers
