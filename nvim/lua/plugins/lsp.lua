return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            typos_lsp = {},
            typescript = {
              inlayHints = {
                variableTypes = { enabled = true },
              },
            },
          },
        },
      },
    },
  },
}
