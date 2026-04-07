return {
  "pwntester/octo.nvim",
  cmd = "Octo",
  opts = {
    -- or "fzf-lua" or "snacks" or "default"
    picker = "snacks",
    -- bare Octo command opens picker of commands
    enable_builtin = true,
  },
  keys = {
    {
      "<leader>oi",
      "<CMD>Octo issue list<CR>",
      desc = "List GitHub Issues",
    },
    {
      "<leader>op",
      "<CMD>Octo pr list<CR>",
      desc = "List GitHub PullRequests",
    },
    {
      "<leader>on",
      "<CMD>Octo notification list<CR>",
      desc = "List GitHub Notifications",
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "folke/snacks.nvim",
    -- OR "nvim-telescope/telescope.nvim",
    -- OR "ibhagwan/fzf-lua",
    "nvim-tree/nvim-web-devicons",
  },
}
