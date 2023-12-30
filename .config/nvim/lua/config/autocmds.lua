-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable autoformat for cpp/cxx/c++ files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "cpp", "c++", "cxx", "h", "hpp", "java", "py" },
  callback = function()
    vim.b.autoformat = false
  end,
})
