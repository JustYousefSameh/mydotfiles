local config = {
    cmd = { vim.fn.expand("C:/Users/p0wer/AppData/Local/nvim-data/mason/bin/jdtls.cmd") },
    root_dir = vim.fs.dirname(vim.fs.find({ '.git', 'mvnw', 'pom.xml' }, { upward = true })[1]),

    on_attach = function(client, bufnr)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr })
        -- vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
        vim.keymap.set("n", "]g", vim.diagnostic.goto_next, { buffer = bufnr })
        vim.keymap.set("n", "[g", vim.diagnostic.goto_prev, { buffer = bufnr })
        -- vim.keymap.set("n", "<leader>dl", vim.diagnostic.setqflist, { buffer = bufnr })
        vim.keymap.set("n", "<leader>k", vim.diagnostic.open_float, { buffer = bufnr })
    end,

}
require('jdtls').start_or_attach(config)
