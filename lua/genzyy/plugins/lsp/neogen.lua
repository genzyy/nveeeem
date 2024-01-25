return {
  "danymat/neogen",
  opts = {
    snippet_engine = "luasnip",
  },
  keys = {
    {
      "<leader>d",
      function()
        require("neogen").generate({})
      end,
      desc = "neogen comment map",
    },
  },
}
