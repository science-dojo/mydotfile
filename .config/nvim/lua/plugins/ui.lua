return {
    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        config = true,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = "VeryLazy",
        main = "ibl",
        opts = {},
    },
    {
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",
        config = true,
    },
    -- https://github.com/sindrets/diffview.nvim/blob/main/USAGE.md
    {
        "sindrets/diffview.nvim",
        cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
        config = function()
            require("diffview").setup()
        end
    },
    {
        "NeogitOrg/neogit",
        event = "VeryLazy",
        dependencies = {
            "nvim-lua/plenary.nvim",         -- required
            "sindrets/diffview.nvim",        -- optional - Diff integration
            -- Only one of these is needed, not both.
            "nvim-telescope/telescope.nvim", -- optional
            --"ibhagwan/fzf-lua",              -- optional
        },
        config = true
    },
    {
        "kdheepak/lazygit.nvim",
        event = "VeryLazy",
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
    {
        "goolord/alpha-nvim",
        config = function()
            require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
        end
    },
    {
        "RRethy/vim-illuminate",
        event = "VeryLazy",
        config = function()
            require('illuminate').configure()
        end
    },
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        event = "VeryLazy",
        config = function()
            function _G.set_terminal_keymaps()
                local opts = { noremap = true }
                vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
                vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
            end
            require("toggleterm").setup {
                close_on_exit = true,
                autochdir = true,
                shell = vim.o.shell,
                size = 20
            }
            vim.keymap.set({ "i", "n" }, [[<C-\>]], '<cmd>exe v:count1 . "ToggleTerm"<CR>');
            vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
        end
    },
}
