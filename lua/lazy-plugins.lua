local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    -- Theme
    "catppuccin/nvim",

    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = "TSUpdate"
    },

    -- Rainbow indentation
    "p00f/nvim-ts-rainbow",

    -- Auto-completion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-nvim-lsp",

    -- Snippets
	"saadparwaiz1/cmp_luasnip",
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",

    -- LSP
	"neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",

    -- File-tree
    {
        "kyazdani42/nvim-tree.lua",
        dependencies = {
            "kyazdani42/nvim-web-devicons",
            version = "nightly",
        },
    },

    -- Telescope
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",

    -- Auto comments
    "terrortylor/nvim-comment",

    -- Git integration
    {
        "akinsho/git-conflict.nvim",
        version = "*",
        config = function()
            require("git-conflict").setup()
        end,
    },
    "lewis6991/gitsigns.nvim",
    "sindrets/diffview.nvim",

    -- Statusline
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "kyazdani42/nvim-web-devicons",
            lazy = true,
        },
    },

    -- Harpoon
    "theprimeagen/harpoon",

    -- Emmet
    "mattn/emmet-vim",
})
