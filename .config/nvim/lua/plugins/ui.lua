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
  -- {
  --   "folke/noice.nvim",
  --   event = "VeryLazy",
  --   opts = {
  --     -- add any options here
  --   },
  --   dependencies = {
  --     -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
  --     "MunifTanjim/nui.nvim",
  --     -- OPTIONAL:
  --     --   `nvim-notify` is only needed, if you want to use the notification view.
  --     --   If not available, we use `mini` as the fallback
  --     "rcarriga/nvim-notify",
  --     "hrsh7th/nvim-cmp"
  --   },
  --   config = function()
  --     require("noice").setup({
  --       lsp = {
  --         -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
  --         override = {
  --           ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
  --           ["vim.lsp.util.stylize_markdown"] = true,
  --           ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
  --         },
  --       },
  --       -- you can enable a preset for easier configuration
  --       presets = {
  --         bottom_search = true, -- use a classic bottom cmdline for search
  --         command_palette = true, -- position the cmdline and popupmenu together
  --         long_message_to_split = true, -- long messages will be sent to a split
  --         inc_rename = false, -- enables an input dialog for inc-rename.nvim
  --         lsp_doc_border = false, -- add a border to hover docs and signature help
  --       },
  --     })
  --   end,
  -- },
  -- {
  --   "folke/noice.nvim",
  --   opts = function(_, opts)
  --     -- filter "No infomation availabel" noice
  --     table.insert(opts.routes, {
  --       filter = {
  --         event = "notify",
  --         find = "No information available",
  --       },
  --       opts = {
  --         skip = true,
  --       },
  --     })
  --
  --     -- hover border
  --     opts.presets.lsp_doc_border = false
  --   end,
  -- },
  -- {
  --   "rcarriga/nvim-notify",
  --   opts = {
  --     -- change notify timeout
  --     timeout = 5000,
  --   },
  -- },
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
