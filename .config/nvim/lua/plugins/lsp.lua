return {
  {
    "j-hui/fidget.nvim",
    event = "VeryLazy",
    tag = "v1.1.0",
  },
  {
    "neovim/nvim-lspconfig",
    cmd = { "Mason", "Neoconf" },
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              workspace = { checkThirdParty = false },
              telemetry = { enable = false },
            },
          },
        },
        clangd = {
          cmd = { "clangd", "--background-index", "--background-index-priority=normal", "--clang-tidy", "-j=8" },
        },
        rust_analyzer = {},
        bacon_ls = {},
        neocmake = {},
        pyright = {},
        jsonls = {},
        marksman = {},
        bashls = {},
        taplo = {},
        ruff_lsp = {},
        dockerls = {},
        docker_compose_language_service = {},
        zls = {},
      },
    },
  },
}
