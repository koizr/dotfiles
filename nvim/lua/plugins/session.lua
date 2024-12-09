return {
    {
        "folke/persistence.nvim",
        event = "BufReadPre",
        keys = {
            { "<leader>qs", function() require("persistence").load() end, desc = "load the session for the current directory" },
            { "<leader>qS", function() require("persistence").select() end, desc = "select a session to load" },
            { "<leader>qd", function() require("persistence").stop() end, desc = "stop persistence" },
        },
        opts = {
            branch = true,
        },
    }
}
