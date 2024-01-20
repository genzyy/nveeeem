return {
  "nvim-pack/nvim-spectre",
  name = "spectre",
  build = false,
  cmd = "Spectre",
  opts = { open_cmd = "noswapfile vnew" }, -- dont create a swapfile when opening spectre window/buffer
  -- stylua: ignore
  keys = {
    { "<leader>sr", function() require("spectre").open() end, desc = "Replace in files (Spectre)" },
  },
}
