return {
  "mikavilpas/yazi.nvim",

  lazy = false,

  keys = {
    {
      "<leader>e",
      "<cmd>Yazi<CR>",
      desc = "Explorer",
    },
  },

  opts = {
    open_for_directories = true,
  },

  config = function(_, opts)
    require("yazi").setup(opts)

    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        if vim.fn.argc() == 0 then
          vim.cmd("Yazi cwd")
        end
      end,
    })
  end,
}
