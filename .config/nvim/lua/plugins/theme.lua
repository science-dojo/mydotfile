return {
  {
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
