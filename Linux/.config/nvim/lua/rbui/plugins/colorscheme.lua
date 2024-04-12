return {
	-- {
	-- 	"catppuccin/nvim",
	-- 	priority = 1000,
	-- 	name = "catppuccin",
	-- 	config = function()
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
