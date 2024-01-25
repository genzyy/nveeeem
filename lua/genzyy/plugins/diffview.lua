return {
  "sindrets/diffview.nvim",
  config = function()
    local diffview = require("diffview")
    diffview.setup({
      diff_binaries = false,
      git_cmd = { "git" },
      use_icons = true,
    })
  end
}
