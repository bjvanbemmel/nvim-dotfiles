local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup {
	ensure_installed = "all",
	sync_install = false,
	ignore_install = { "unmaintained" },
	highlight = {
		enable = true,
		disabled = { "" },
		additional_vim_regex_highlighting = true,
	},
	indent = { enable =  true, disable = { "" } },
	
	-- Rainbow plugin
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil
	}
}
