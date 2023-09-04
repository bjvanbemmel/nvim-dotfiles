require("catppuccin").setup({
	transparent_background = true,
	styles = {
		comments = { "italic" },
	},
	integrations = {
		treesitter = true,
	}
})

vim.cmd[[colorscheme catppuccin]]
