return {
    -- see: https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation#lazynvim
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        -- main を設定して、 config の代わりに opts を指定するのもあり。
        -- main = "nvim-treesitter.configs"
        config = function()
            local configs = require("nvim-treesitter.configs")
            configs.setup({
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
                ensure_installed = {
                    "bash",
                    "diff",
                    "html",
                    "javascript",
                    "jsdoc",
                    "json",
                    "jsonc",
                    "lua",
                    "luadoc",
                    "luap",
                    "markdown",
                    "markdown_inline",
                    "printf",
                    "regex",
                    "rust",
                    "toml",
                    "tsx",
                    "typescript",
                    "vim",
                    "vimdoc",
                    "xml",
                    "yaml",
                },
            })
        end,
    },
}
