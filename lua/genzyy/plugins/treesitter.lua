return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  name = "treesitter",
  event = "bufWinEnter",
  lazy = false,
  init = function()
    local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
    ts_update()
  end,
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "c",
        "lua",
        "python",
        "javascript",
        "typescript",
        "rust",
        "vim",
        "go",
        "gomod",
        "gowork",
        "gosum",
      },
      sync_install = false,
      auto_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    })
  end,
}
