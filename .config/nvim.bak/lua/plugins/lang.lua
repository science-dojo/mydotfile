return {
  {
    "ziglang/zig.vim",
    event = { "BufReadPost", "BufNewFile" },
    ft = { "zig" },
    config = function()
      return true
    end,
  },
  { "nvim-neotest/nvim-nio", event = { "BufReadPost", "BufNewFile" } },
}
