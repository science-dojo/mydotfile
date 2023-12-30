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
    tag = "v1.0.0",
  },
  {
    "neovim/nvim-lspconfig",
    cmd = { "Mason", "Neoconf" },
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      local servers = {
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
      }
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      require("mason-lspconfig").setup({
        ensure_installed = vim.tbl_keys(servers),
      })
      for server, config in pairs(servers) do
        require("lspconfig")[server].setup(vim.tbl_deep_extend("keep", {
          capabilities = capabilities,
        }, config))
      end
    end,
  },
}
