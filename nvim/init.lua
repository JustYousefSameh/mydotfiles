require("config.keymaps")
require("config.options")
require("config.lazy")

if vim.g.neovide then
    vim.o.guifont = "Mononoki Nerd Font Mono:h13"
    vim.g.neovide_padding_top = 12
    vim.g.neovide_hide_mouse_when_typing = true
    vim.g.neovide_cursor_animation_length = 0.15
    vim.g.neovide_cursor_antialiasing = false
    vim.g.neovide_cursor_trail_size = 0.3
    vim.g.neovide_cursor_smooth_blink = true
    vim.g.neovide_scroll_animation_length = 0.30
    vim.g.neovide_no_idle = true
    vim.g.nevoide_refresh_rate = 60
    vim.g.neovide_refresh_rate_idle = 60
    vim.g.neovide_floating_shadow = false
    vim.g.neovide_floating_blue_amount_x = 0.0
    vim.g.neovide_floating_blue_amount_y = 0.0

    vim.keymap.set("v", "<c-s-c>", '"+y')         -- Copy
    vim.keymap.set("n", "<c-s-v>", '"+P')         -- Paste normal mode
    vim.keymap.set("v", "<s-s-v>", '"+P')         -- Paste visual mode
    vim.keymap.set("c", "<c-s-v>", "<C-R>+")      -- Paste command mode
    vim.keymap.set("i", "<c-s-v>", '<ESC>l"+Pli') -- Paste insert mode
end

vim.lsp.enable({ 'luals' })
