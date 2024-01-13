return {
	"folke/tokyonight.nvim",
	name = "tokyonight",
	priority = 1000,
	config = function()
		local tokyonight = require("tokyonight")
		tokyonight.setup({
			style = "night",
			transparent = true,
			styles = {
				comments = { italic = true },
				keyword = { italic = false },
			},
		})
		vim.cmd([[ colorscheme tokyonight ]])
		-- changing bg and border colors
		vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
		vim.api.nvim_set_hl(0, "LspInfoBorder", { link = "Normal" })
		vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
	end,
}
