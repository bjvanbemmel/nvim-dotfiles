require("nvim-tree").setup({
    git = {
        enable = true,
        ignore = true,
        show_on_dirs = true,
        timeout = 400,
    },
    hijack_netrw = true,
    open_on_setup_file = false,
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {},
        },
        side = "left"
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
    actions = {
        open_file = {
            quit_on_open = true,
        }
    }
})
