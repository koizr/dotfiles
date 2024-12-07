return {
    {
        "lambdalisue/fern.vim",
        keys = {
            { "<C-q>", "<CMD>Fern . -drawer -toggle<CR>", desc = "Toggle Fern file tree" },
            { "<C-S-q>", "<CMD>Fern . -reveal=%<CR>", desc = "Open Fern file tree" },
        },
        dependencies = {
            "lambdalisue/nerdfont.vim",
            "lambdalisue/fern-renderer-nerdfont.vim",
        },
        init = function()
            vim.g["fern#renderer"] = "nerdfont"
        end,
    },
    {
        "lambdalisue/nerdfont.vim",
        lazy = true,
    },
    {
        "lambdalisue/fern-renderer-nerdfont.vim",
        lazy = true,
    },
}
