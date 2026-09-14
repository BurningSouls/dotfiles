return {
  "lewis6991/gitsigns.nvim",

  opts = {},

  keys = {
    {
      "<leader>gd",
      "<cmd>Gitsigns diffthis<CR>",
      desc = "Git Diff",
    },
    {
      "<leader>gb",
      "<cmd>Gitsigns blame_line<CR>",
      desc = "Git Blame",
    },
    {
      "]g",
      "<cmd>Gitsigns next_hunk<CR>",
      desc = "Next Git Hunk",
    },
    {
      "[g",
      "<cmd>Gitsigns prev_hunk<CR>",
      desc = "Previous Git Hunk",
    },
  },
}
