return {
	dir = "~/Dev/weaver.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	lazy = false,
	config = function()
		require("weaver").setup({
			width = 90,
			height = 10,
			use_filename_as_weaver_title = true,
		})
	end,
}
