return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>" },
        { "<leader>ft", "<cmd>Telescope tags<cr>" },
        { "<leader>fc", "<cmd>Telescope commands<cr>" },
        { "<leader>fh", "<cmd>Telescope command_history<cr>" },
        { "<leader>f/", "<cmd>Telescope search_history<cr>" },
        { "<leader>fs", "<cmd>Telescope treesitter<cr>" },
    },
}
