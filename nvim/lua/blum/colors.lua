require("lualine").setup({
    options = {
        theme = "nord",
    }
})

-- local vimrc_background = vim.fn.expand("$HOME/.vimrc_background")
-- if vim.fn.filereadable(vimrc_background) then
--     vim.g.base16colorspace = 256
--     vim.cmd("source " .. vimrc_background)
-- end

vim.cmd('colorscheme nord')
vim.cmd("hi! EndOfBuffer guibg=bg guifg=bg")
