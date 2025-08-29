require("config.keymaps")
require("config.options")
require("config.lazy")

-- vim.g.sonokai_transparent_background = 1

if vim.g.neovide then
    vim.o.guifont = "FiraCode Nerd Font Mono:h12"
    vim.g.neovide_padding_top = 0
    vim.g.neovide_hide_mouse_when_typing = true
    vim.g.neovide_cursor_animation_length = 0.07
    vim.g.neovide_cursor_antialiasing = true
    vim.g.neovide_cursor_trail_size = 0.2
    vim.g.neovide_cursor_smooth_blink = true
    vim.g.neovide_scroll_animation_length = 0.15
    vim.g.neovide_floating_shadow = false

    vim.keymap.set("v", "<c-s-c>", '"+y')         -- Copy
    vim.keymap.set("n", "<c-s-v>", '"+P')         -- Paste normal mode
    vim.keymap.set("v", "<s-s-v>", '"+P')         -- Paste visual mode
    vim.keymap.set("c", "<c-s-v>", "<C-R>+")      -- Paste command mode
    vim.keymap.set("i", "<c-s-v>", '<ESC>l"+Pli') -- Paste insert mode
end

-- vim.cmd.colorscheme('sonokai')
-- vim.g.sonokai_transparent_background = 0




-- local colors = { bg = "#111025" }
-- vim.api.nvim_set_hl(0, "Normal", colors)
-- vim.api.nvim_set_hl(0, "NormalNC", colors)
-- vim.api.nvim_set_hl(0, "LineNr", colors)
-- vim.api.nvim_set_hl(0, "CursorLineNr", colors)
-- vim.api.nvim_set_hl(0, "SignColumn", colors)
-- vim.api.nvim_set_hl(0, "VertSplit", { bg = "#111025" })
vim.lsp.enable({ 'luals' })

-- vim.o.background = "dark"
vim.o.winborder = "rounded"
