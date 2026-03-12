return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
        ignored = true,
        exclude = { ".git", "node_modules", ".DS_Store" },
        sources = {
          files = {
            hidden = true,
            ignored = true,
          },
          explorer = {
            include = { "node_modules" },
          },
        },
      },
    },
  },
}
