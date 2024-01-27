return {
  dir = "~/Dev/hasten.nvim",
  lazy = false,
  config = function()
    require("hasten").setup({
      main_key = "control"
    })
  end
}
