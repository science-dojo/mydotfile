return {
  {
    "ziglang/zig.vim",
    event = { "BufReadPost", "BufNewFile" },
    ft = { "zig" },
    config = function()
      return true
    end,
  },
}
