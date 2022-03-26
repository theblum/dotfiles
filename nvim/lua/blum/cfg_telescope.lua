local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup()
telescope.load_extension("fzy_native")
telescope.load_extension("file_browser")

local M = {}

M.project_files = function()
    local opts = {}
    local ok = pcall(builtin.git_files, opts)
    if not ok then builtin.find_files(opts) end
end

return M
