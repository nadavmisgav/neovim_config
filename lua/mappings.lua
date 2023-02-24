vim.g.mapleader = ' '
--
local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
vim.keymap.set("n", "<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)


vim.keymap.set("n", "<C-e>", "<cmd>NvimTreeToggle<cr>")

vim.keymap.set("n", "<leader>gs", "<cmd>Git<cr>")

-- shortcuts to toggle commen
vim.keymap.set("n", "<C-_>", ':call nerdcommenter#Comment(0, "toggle")<CR>', { noremap = true })
vim.keymap.set("v", "<C-_>", ':call nerdcommenter#Comment(0, "toggle")<CR>', { noremap = true })

vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
