require("lualine").setup({
    options = {
        -- NOTE: This is the lualine material theme, not the material-nvim one that comes with
        -- `marko-cerovac/material.nvim`
        theme = "material",
    }
})

require("material").setup({
    contrast = true,
    borders = true,
    popup_menu = "dark",

    italics = {
        comments = true,
    },

    contrast_windows = {
        "qf"
    },

    disable = {
        eob_lines = true,
    }
})

vim.g.material_style = "oceanic"
vim.cmd('colorscheme material')
