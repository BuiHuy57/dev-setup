return {
	"catppuccin/nvim",
	priority = 1000, -- make sure this loads before all other start plugins
	name = "catppuccin",
	config = function()
		-- load the colorscheme here
		vim.cmd([[colorscheme catppuccin-mocha]])
	end,
}
