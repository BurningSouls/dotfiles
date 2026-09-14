return {
  "nvimtools/none-ls.nvim",

  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  config = function()
    local null_ls = require("null-ls")

    local rumdl = {
      method = null_ls.methods.DIAGNOSTICS,
      filetypes = { "markdown" },

      generator = null_ls.generator({
        command = "rumdl",
        args = { "check", "--output", "json", "$FILENAME" },
        to_stdin = false,
        from_stderr = false,
        format = "raw",

        check_exit_code = function(code)
          return code == 0 or code == 1
        end,

        on_output = function(params)
          local ok, output = pcall(vim.json.decode, params.output)

          if not ok or type(output) ~= "table" then
            return {}
          end

          local diagnostics = {}

          for _, item in ipairs(output) do
            local severity = vim.diagnostic.severity.WARN

            if item.severity == "error" then
              severity = vim.diagnostic.severity.ERROR
            elseif item.severity == "info" then
              severity = vim.diagnostic.severity.INFO
            elseif item.severity == "hint" then
              severity = vim.diagnostic.severity.HINT
            end

            table.insert(diagnostics, {
              row = item.line,
              col = item.column,
              message = item.message,
              code = item.rule,
              severity = severity,
            })
          end

          return diagnostics
        end,
      }),
    }
    local shellcheck = {
      method = null_ls.methods.DIAGNOSTICS,
      filetypes = { "sh", "bash", "zsh" },

      generator = null_ls.generator({
        command = "shellcheck",
        args = { "--format=json1", "-" },
        to_stdin = true,
        from_stderr = true,
        format = "json",
      }),
    }

    null_ls.setup({
      sources = {
        null_ls.builtins.diagnostics.yamllint,
        shellcheck,
        null_ls.builtins.formatting.stylua,
        rumdl,
      },
    })
  end,
}