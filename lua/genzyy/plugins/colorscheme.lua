return {
  "nyoom-engineering/oxocarbon.nvim",
  name = "oxocarbon",
  priority = 1000,
  config = function()
    vim.cmd([[ colorscheme oxocarbon ]])

    -- changing bg and border colors
    vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
    vim.api.nvim_set_hl(0, "LspInfoBorder", { link = "Normal" })
    vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
  end,
}
