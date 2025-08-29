local colors = {
    blue   = '#80a0ff',
    cyan   = '#79dac8',
    black  = '#080808',
    white  = '#c6c6c6',
    red    = '#ff5189',
    violet = '#d183e8',
    grey   = '#303030',
}

local bubbles_theme = {
    normal = {
        a = { bg = "none" },
        b = { --[[  fg = colors.white, bg = colors.grey  ]] },
        c = { --[[  fg = colors.white  ]] bg = 'none' },
    },

    insert = { a = { --[[  fg = colors.black, bg = colors.blue  ]] } },
    visual = { a = { --[[  fg = colors.black, bg = colors.cyan  ]] } },
    replace = { a = { --[[  fg = colors.black, bg = colors.red  ]] } },

    inactive = {
        a = { --[[  fg = colors.white, bg = colors.black  ]] },
        b = { --[[  fg = colors.white, bg = colors.black  ]] },
        c = { --[[  fg = colors.white  ]] },
    },
}

local theme = {
    normal = {
        a = { bg = "None", gui = "bold" },
        b = { bg = "None", gui = "bold" },
        c = { bg = "None", gui = "bold" },
        x = { bg = "None", gui = "bold" },
        y = { bg = "None", gui = "bold" },
        z = { bg = "None", gui = "bold" },
    },
    insert = {
        a = { bg = "None", gui = "bold" },
        b = { bg = "None", gui = "bold" },
        c = { bg = "None", gui = "bold" },
        x = { bg = "None", gui = "bold" },
        y = { bg = "None", gui = "bold" },
        z = { bg = "None", gui = "bold" },
    },
    visual = {
        a = { bg = "None", gui = "bold" },
        b = { bg = "None", gui = "bold" },
        c = { bg = "None", gui = "bold" },
        x = { bg = "None", gui = "bold" },
        y = { bg = "None", gui = "bold" },
        z = { bg = "None", gui = "bold" },
    },
    replace = {
        a = { bg = "None", gui = "bold" },
        b = { bg = "None", gui = "bold" },
        c = { bg = "None", gui = "bold" },
        x = { bg = "None", gui = "bold" },
        y = { bg = "None", gui = "bold" },
        z = { bg = "None", gui = "bold" },
    },
    command = {
        a = { bg = "None", gui = "bold" },
        b = { bg = "None", gui = "bold" },
        c = { bg = "None", gui = "bold" },
        x = { bg = "None", gui = "bold" },
        y = { bg = "None", gui = "bold" },
        z = { bg = "None", gui = "bold" },
    },
    inactive = {
        a = { bg = "None", gui = "bold" },
        b = { bg = "None", gui = "bold" },
        c = { bg = "None", gui = "bold" },
        x = { bg = "None", gui = "bold" },
        y = { bg = "None", gui = "bold" },
        z = { bg = "None", gui = "bold" },
    },
}


return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            local auto = require "lualine.themes.auto"
            local lualine_modes = { "insert", "normal", "visual", "command", "replace", "inactive", "terminal" }
            for _, field in ipairs(lualine_modes) do
                if auto[field] and auto[field].c then
                    auto[field].c.bg = "None"
                end
            end

            require("lualine").setup {
                options = {
                    theme = bubbles_theme,
                    component_separators = "",
                    section_separators = { left = "", right = "" },
                    always_divide_middle = false,
                },
                sections = {
                    lualine_a = { { 'mode', --[[  separator = { left = '' }, ]] right_padding = 2 } },
                    lualine_b = { 'filename', 'branch', 'diagnostics' },
                    lualine_c = {
                        '%=', --[[ add your center compoentnts here in place of this comment ]]
                    },
                    lualine_x = {},
                    lualine_y = { 'filetype' },
                    lualine_z = {
                        { 'location', --[[ separator = { right = '' }, ]] left_padding = 2 },
                    },
                },
                inactive_sections = {
                    lualine_a = { 'filename' },
                    lualine_b = {},
                    lualine_c = {},
                    lualine_x = {},
                    lualine_y = {},
                    lualine_z = { 'location' },
                },
                tabline = {},
                extensions = {}
            }
        end,

    },
}
