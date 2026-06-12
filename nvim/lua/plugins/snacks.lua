return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
        include = { ".env", ".env.local", "mise.local.toml" },
        exclude = { ".git", "node_modules", ".DS_Store" },
        sources = {
          files = {
            hidden = true,
          },
          explorer = {
            ignore = true,
            follow_file = false,
          },
        },
      },
    },
  },
}
