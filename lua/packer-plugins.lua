return require('packer').startup(function()

	-- Package manager
	use 'wbthomason/packer.nvim'

    -- Catpuccin
    use "catppuccin/nvim"

	-- Treesitter
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	}

	-- Rainbow indentation
	use "p00f/nvim-ts-rainbow"

	-- Auto Completion
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-cmdline"
	use "saadparwaiz1/cmp_luasnip"
    use "hrsh7th/cmp-nvim-lsp"

	-- Snippets
	use "L3MON4D3/LuaSnip"
	use "rafamadriz/friendly-snippets"

	-- LSP
	use "neovim/nvim-lspconfig"
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
   
    -- Tree
    use {
        "kyazdani42/nvim-tree.lua",
        requires = {
            "kyazdani42/nvim-web-devicons",
        },
        tag = "nightly"
    }

    -- Telescope
    use "nvim-telescope/telescope.nvim"
    use "nvim-lua/plenary.nvim" -- dependency

    -- Auto comments
    use "terrortylor/nvim-comment"

    -- Daddy Primeagen's thing
    use "theprimeagen/vim-be-good"

    -- Git integration
    use {"akinsho/git-conflict.nvim", tag = "*", config = function()
        require('git-conflict').setup()
    end}
    use "lewis6991/gitsigns.nvim"
    use "sindrets/diffview.nvim"

    -- Ctags
    use "ludovicchabant/vim-gutentags"
    use "preservim/tagbar"

    -- Statusline
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }

    -- Harpoon
    use "theprimeagen/harpoon"

    -- Markdown
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    -- Emmet
    use "mattn/emmet-vim"

end)
