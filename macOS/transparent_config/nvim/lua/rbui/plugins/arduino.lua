return {
	"stevearc/vim-arduino",

	config = function()
		local keymap = vim.keymap

		keymap.set("n", "<leader>aa", "<cmd>ArduinoAttach<CR>")
		keymap.set("n", "<leader>av", "<cmd>ArduinoVerify<CR>")
		keymap.set("n", "<leader>au", "<cmd>ArduinoUpload<CR>")
		keymap.set("n", "<leader>aus", "<cmd>ArduinoUploadAndSerial<CR>")
		keymap.set("n", "<leader>as", "<cmd>ArduinoSerial<CR>")
		keymap.set("n", "<leader>ab", "<cmd>ArduinoChooseBoard<CR>")
		keymap.set("n", "<leader>ap", "<cmd>ArduinoChooseProgrammer<CR>")
	end,
}
