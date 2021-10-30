require("lualine").setup({
    options = {
        -- theme = "material-nvim",
        theme = "material",
    }
})

local vimrc_background = vim.fn.expand("$HOME/.vimrc_background")
if vim.fn.filereadable(vimrc_background) then
    vim.g.base16colorspace = 256
    vim.cmd("source " .. vimrc_background)
end

-- require("material").setup({
--     contrast = false,
--     borders = true,
--     popup_menu = "dark",
--
--     italics = {
--         comments = true,
--     },
--
--     contrast_windows = {
--         "qf"
--     },
--
--     disable = {
--         eob_lines = true,
--     }
-- })
--
-- vim.g.material_style = "oceanic"
-- vim.cmd('colorscheme material')
