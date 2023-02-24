require('settings')
require('plugins')
require('mappings')
require("onedark").load()
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    update_focused_file = {
        enable = true,
        update_root = true,
    },
    git = {
        enable = true,
    },
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        highlight_git = true,
        icons = {
            show = {
                git = true,
            },
        },
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
