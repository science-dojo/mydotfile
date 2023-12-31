return {
  {

    "SmiteshP/nvim-navic",
    event = "VeryLazy",
    dependencies = {
      "neovim/nvim-lspconfig",
    },
  },
  {
    "nvim-tree/nvim-web-devicons",
    event = "VeryLazy",
    config = true,
  },
  -- https://github.com/sindrets/diffview.nvim/blob/main/USAGE.md
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
    config = function()
      require("diffview").setup()
    end,
  },
  {
    "RRethy/vim-illuminate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("illuminate").configure()
    end,
  },
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      -- filter "No infomation availabel" noice
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = {
          skip = true,
        },
      })

      -- hover border
      opts.presets.lsp_doc_border = false
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      -- change notify timeout
      timeout = 5000,
    },
  },
}
