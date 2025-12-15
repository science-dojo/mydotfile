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
          cmd = {
            "/opt/homebrew/opt/llvm/bin/clangd",
            "--background-index",
            "--background-index-priority=normal",
            "--clang-tidy",
            "--experimental-modules-support",
            "-j=8",
            "--query-driver=/opt/homebrew/opt/llvm/bin/clang*",
            "--enable-config",
            "--compile-commands-dir=build",
          },
        },
        -- rust_analyzer = {},
        -- bacon_ls = {},
        -- neocmake = {},
        -- pyright = {},
        -- jsonls = {},
        -- marksman = {},
        -- bashls = {},
        -- taplo = {},
        -- ruff_lsp = {},
        -- dockerls = {},
        -- docker_compose_language_service = {},
        -- zls = {},
      },
    },
  },
}
