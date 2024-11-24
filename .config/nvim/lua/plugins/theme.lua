return {
  -- {
  --   "nvim-lualine/lualine.nvim",
  --
  --   event = "VeryLazy",
  --   config = function()
  --     require("lualine").setup({
  --       options = {
  --         theme = "tokyonight",
  --       },
  --     })
  --   end,
  -- },
  -- {
  --
  --   "SmiteshP/nvim-navic",
  --   event = "VeryLazy",
  --   dependencies = {
  --     "neovim/nvim-lspconfig",
  --   },
  -- },
  -- {
  --   "nvim-tree/nvim-web-devicons",
  --   event = "VeryLazy",
  --   config = true,
  -- },
  -- {
  --   "utilyre/barbecue.nvim",
  --   event = "VeryLazy",
  --   config = function()
  --     require("barbecue").setup({
  --       theme = "tokyonight",
  --     })
  --   end,
  -- },
  -- -- https://github.com/sindrets/diffview.nvim/blob/main/USAGE.md
  -- {
  --   "sindrets/diffview.nvim",
  --   cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
  --   config = function()
  --     require("diffview").setup()
  --   end,
  -- },
  -- {
  --   "RRethy/vim-illuminate",
  --   event = { "BufReadPost", "BufNewFile" },
  --   config = function()
  --     require("illuminate").configure()
  --   end,
  -- },
  -- logo
  -- use https://patorjk.com/software/taag to generate your own art ge
  -- {
  --   "nvimdev/dashboard-nvim",
  --   event = "VimEnter",
  --   opts = function(_, opts)
  --     local logo = [[
  --             __       ___      ___   __    _____  ___    _______   _______
  --           /""\     |"  \    /"  | |" \  (\"   \|"  \  /"     "| /"      \
  --           /    \     \   \  //   | ||  | |.\\   \    |(: ______)|:        |
  --         /' /\  \    /\\  \/.    | |:  | |: \.   \\  | \/    |  |_____/   )
  --         //  __'  \  |: \.        | |.  | |.  \    \. | // ___)_  //      /
  --       /   /  \\  \ |.  \    /:  | /\  |\|    \    \ |(:      "||:  __   \
  --       (___/    \___)|___|\__/|___|(__\_|_)\___|\____\) \_______)|__|  \___)
  --
  --     ]]
  --     logo = string.rep("\n", 8) .. logo .. "\n\n"
  --     if opts.config == nil then
  --       opts.config = { header = vim.split(logo, "\n") }
  --     end
  --     opts.config.header = vim.split(logo, "\n")
  --   end,
  -- },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
      __       ___      ___   __    _____  ___    _______   _______
    /""\     |"  \    /"  | |" \  (\"   \|"  \  /"     "| /"      \
    /    \     \   \  //   | ||  | |.\\   \    |(: ______)|:        |
  /' /\  \    /\\  \/.    | |:  | |: \.   \\  | \/    |  |_____/   )
  //  __'  \  |: \.        | |.  | |.  \    \. | // ___)_  //      /
/   /  \\  \ |.  \    /:  | /\  |\|    \    \ |(:      "||:  __   \
(___/    \___)|___|\__/|___|(__\_|_)\___|\____\) \_______)|__|  \___)

      ]],
        },
      },
    },
  },
}
