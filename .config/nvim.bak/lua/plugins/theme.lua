return {
  {
    -- A blazing fast and easy to configure Neovim statusline written in Lua.
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    config = function()
      require("lualine").setup({
        options = {
          theme = "tokyonight",
        },
      })
    end,
  },
  {
    "utilyre/barbecue.nvim",
    event = "VeryLazy",
    config = function()
      require("barbecue").setup({
        theme = "tokyonight",
      })
    end,
  },
}
