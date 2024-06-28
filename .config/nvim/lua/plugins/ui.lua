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
  -- logo
  -- use https://patorjk.com/software/taag to generate your own art ge
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
              __       ___      ___   __    _____  ___    _______   _______   
            /""\     |"  \    /"  | |" \  (\"   \|"  \  /"     "| /"      \  
            /    \     \   \  //   | ||  | |.\\   \    |(: ______)|:        | 
          /' /\  \    /\\  \/.    | |:  | |: \.   \\  | \/    |  |_____/   ) 
          //  __'  \  |: \.        | |.  | |.  \    \. | // ___)_  //      /  
        /   /  \\  \ |.  \    /:  | /\  |\|    \    \ |(:      "||:  __   \  
        (___/    \___)|___|\__/|___|(__\_|_)\___|\____\) \_______)|__|  \___) 
                                                                            
      ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    enabled = true,
    init = false,
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[
              __       ___      ___   __    _____  ___    _______   _______   
            /""\     |"  \    /"  | |" \  (\"   \|"  \  /"     "| /"      \  
            /    \     \   \  //   | ||  | |.\\   \    |(: ______)|:        | 
          /' /\  \    /\\  \/.    | |:  | |: \.   \\  | \/    |  |_____/   ) 
          //  __'  \  |: \.        | |.  | |.  \    \. | // ___)_  //      /  
        /   /  \\  \ |.  \    /:  | /\  |\|    \    \ |(:      "||:  __   \  
        (___/    \___)|___|\__/|___|(__\_|_)\___|\____\) \_______)|__|  \___) 
                                                                            
      ]]
      dashboard.section.header.val = vim.split(logo, "\n")
    end,
  },
}
