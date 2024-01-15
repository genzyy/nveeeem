return {
	dir = "~/Dev/weaver.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	lazy = false,
	config = function()
		require("weaver").setup()
	end,
}
