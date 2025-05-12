return {
    cmd = { 'lua-language-server' },             -- Ensure lua-language-server is installed
    root_markers = {
        '.luarc.json',
        '.luarc.jsonc',
        '.luacheckrc',
        '.stylua.toml',
        'selene.toml',
        'stylua.toml'             -- Common Lua project configuration files
    },
    filetypes = { 'lua' },
    -- settings = {
    --     Lua = {
    --         diagnostics = {
    --             globals = { 'vim' } -- Recognize vim global for Neovim config
    --         },
    --         workspace = {
    --             library = {
    --                 vim.env.VIMRUNTIME, -- Add Neovim runtime files
    --                 -- Add additional library paths if needed
    --                 -- vim.fn.stdpath('config') .. '/lua'
    --             },
    --             maxPreload = 100000,
    --             preloadFileSize = 10000
    --         }
    --     }
    -- }
}
