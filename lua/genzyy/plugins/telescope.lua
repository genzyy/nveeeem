return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    name = "telescope",
    config = function()
        local builtin = require("telescope.builtin")
        local keymap = vim.keymap

        keymap.set("n", "<leader>ff", builtin.find_files, {})
        keymap.set("n", "<leader>fg", function()
            if pcall(builtin.git_files) then
                return
            else
                print("Git repo not initialized.")
            end
        end, {})
        keymap.set("n", "<leader>fs", function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end, {})

        keymap.set("n", "gd", function()
            builtin.lsp_definitions({ reuse_win = true })
        end)

        keymap.set("n", "gI", function()
            builtin.lsp_implementations({ reuse_win = true })
        end)

        keymap.set("n", "gy", function()
            builtin.lsp_type_definitions({ reuse_win = true })
        end)
    end,
}
