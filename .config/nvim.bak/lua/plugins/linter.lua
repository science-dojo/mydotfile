return {
    "mfussenegger/nvim-lint",
    -- optional = true,
    event = "VeryLazy",
    opts = {
        linters_by_ft = {
            cmake = { "cmakelint" },
        },
    },
    config = function()
        vim.api.nvim_create_autocmd({ "BufWritePost" }, {
            callback = function()
                require("lint").try_lint()
            end,
        })
    end
}
