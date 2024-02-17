-- return {
--   "genzyy/hasten.nvim",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--   },
--   config = function()
--     require("hasten").setup({
--       predefined_keymaps = {
--         "<C-x>",
--         "<C-c>",
--       }
--     })
--   end
-- }

return {
  dir = "~/Dev/hasten.nvim",
  lazy = false,
  config = function()
    require("hasten").setup({
      predefined_keymaps = {
        "<C-x>",
        "<C-c>",
      }
    })
  end
}
