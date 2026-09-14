return {
  "neovim/nvim-lspconfig",

  dependencies = {
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
  },

  config = function()
    local mason_lspconfig = require("mason-lspconfig")

    mason_lspconfig.setup({
      ensure_installed = {
        "lua_ls",
        "yamlls",
        "jsonls",
        "marksman",
        "dockerls",
        "docker_compose_language_service",
      },
    })

    vim.lsp.config("*", {
      capabilities = vim.lsp.protocol.make_client_capabilities(),
    })

  vim.lsp.config("lua_ls", {
    settings = {
      Lua = {
        runtime = {
          version = "LuaJIT",
        },

        diagnostics = {
          globals = { "vim" },
        },

        workspace = {
          checkThirdParty = false,
        },
      },
    },
  })

   local capabilities = require("cmp_nvim_lsp").default_capabilities()

    vim.lsp.config("*", {
    capabilities = capabilities,
    })

    vim.lsp.enable({
      "lua_ls",
      "yamlls",
      "jsonls",
      "marksman",
      "dockerls",
      "docker_compose_language_service",
    })
  end,
}
