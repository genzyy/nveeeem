return {
  "nvim-telescope/telescope.nvim",
  name = "telescope",
  tag = "0.1.5",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local telescope_builtin = require("telescope.builtin")
    local keymap = vim.keymap

    -- Set keymaps for telescope
    keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})
    keymap.set("n", "<leader>gf", function()
      if pcall(telescope_builtin.git_files) then return else print("Git repo not initialized.") end
    end, {})

        keymap.set("n", "<leader>fs", function()
            telescope_builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end, {})

        keymap.set("n", "gd", function()
            telescope_builtin.lsp_definitions({ reuse_win = true })
        end)

        keymap.set("n", "gI", function()
            telescope_builtin.lsp_implementations({ reuse_win = true })
        end)

        keymap.set("n", "gy", function()
            telescope_builtin.lsp_type_definitions({ reuse_win = true })
        end)

  end
}
