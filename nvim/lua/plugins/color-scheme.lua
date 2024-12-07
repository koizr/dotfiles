return {
    {
        "EdenEast/nightfox.nvim",
        lazy = false,
        -- どのプラグインよりも優先して読み込む。
        priority = 1000,
        config = function()
            vim.cmd("colorscheme nightfox")
        end,
    },
}
