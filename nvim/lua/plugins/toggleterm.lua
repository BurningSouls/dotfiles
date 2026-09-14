return {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
        direction = "float",
        float_opts = {
            border = "rounded",
        },
    },
    keys = {
        {
            "<leader>gg",
            "<cmd>ToggleTerm<CR>",
            desc = "LazyGit",
        },
    },
    config = function(_, opts)
        require("toggleterm").setup(opts)

        local Terminal = require("toggleterm.terminal").Terminal

        local lazygit = Terminal:new({
            cmd = "lazygit",
            direction = "float",
            hidden = true,
            on_open = function(term)
                vim.cmd("startinsert!")
            end,
        })

        vim.keymap.set("n", "<leader>gg", function()
            lazygit:toggle()
        end, { desc = "LazyGit" })
    end,
}
