return {
  "echasnovski/mini.indentscope",
  name = "mini-indentscope",
  version = false,
  config = function()
    require("mini.indentscope").setup({
      --symbol = "│",
      options = { try_as_border = true },
    })
  end
}
