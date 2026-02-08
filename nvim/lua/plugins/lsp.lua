---@type LazyPluginSpec
return {
    {
        "neovim/nvim-lspconfig",
        -- Bufferが読み込まれるときをトリガーに遅延ロードする
        event = { "BufReadPre", "BufNewFile" },
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "lua_ls" }
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    }
}
