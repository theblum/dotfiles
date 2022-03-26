require("lualine").setup({
    options = {
        theme = "nord",
    },
    sections = {
        lualine_c = {"vim.fn.expand('%')"}
    }
})

-- local vimrc_background = vim.fn.expand("$HOME/.vimrc_background")
-- if vim.fn.filereadable(vimrc_background) then
--     vim.g.base16colorspace = 256
--     vim.cmd("source " .. vimrc_background)
-- end

vim.g.nord_italic = false
vim.cmd('colorscheme nord')
vim.cmd("hi! EndOfBuffer guibg=bg guifg=bg")
