return {
	-- {
	-- 	"catppuccin/nvim",
	-- 	priority = 1000, -- make sure this loads before all other start plugins
	-- 	name = "catppuccin",
	-- 	config = function()
	-- 		-- load the colorscheme here
	-- 		vim.cmd([[colorscheme catppuccin-mocha]])
	-- 	end,
	-- },
	{
		"catppuccin/nvim",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
				cursorline = false,
			})

			vim.cmd([[colorscheme catppuccin]])
		end,
	},
}
