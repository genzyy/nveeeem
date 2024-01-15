return {
	dir = "~/Dev/switcher.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	lazy = false,
	config = function()
		require("switcher").setup({
			main_key = "<leader>",
		})
	end,
}
