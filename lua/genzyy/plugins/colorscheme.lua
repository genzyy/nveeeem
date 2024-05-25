return {
  "rose-pine/neovim",
  as = "rose-pine",
  lazy = false,
  name = "catppuccin",
  config = function()
    require("rose-pine").setup({
      dim_inactive_windows = false,
      extend_background_behind_borders = true,
      enable = {
        terminal = true,
        migrations = true,
      },
      stules = {
        bold = false,
        italic = true,
        transparency = false,
      }
    })
    vim.cmd [[colorscheme rose-pine]]
  end,
}
