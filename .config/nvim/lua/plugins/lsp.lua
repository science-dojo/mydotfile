return {
  {
    "nvimdev/lspsaga.nvim",
    event = "VeryLazy",
    config = function()
      require("lspsaga").setup({})
    end,
  },
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
        pyright = {},
        jsonls = {},
        marksman = {},
        dockerls = {},
        docker_compose_language_service = {},
        bashls = {},
        taplo = {},
        ruff_lsp = {},
        clangd = {
          cmd = { "clangd", "--background-index", "--background-index-priority=normal", "--clang-tidy", "-j=8" },
        },
        rust_analyzer = {},
        neocmake = {},
      },
      setup = {},
    },
  },
}
