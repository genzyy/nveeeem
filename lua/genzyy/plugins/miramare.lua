return {
  dir = "~/Dev/miramare.nvim",
  lazy = false,
  config = function()
    require("miramare").setup({
      contrast = "dark",
      transparent = true,
      keywords = { italic = false },
    })
    vim.cmd([[ colorscheme miramare ]])
  end,
}
