return {
  "genzyy/embark-lua.nvim",
  config = function()
    require("embark").setup({
      styles = {
        keywords = {
          italic = true,
          bold = true,
        },
        comments = {
          italic = true,
          bold = true,
        }
      }
    })
    vim.cmd [[colorscheme embark]]
  end
}
