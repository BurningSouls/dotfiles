-- Clear search highlighting
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Move selected text up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor centered while moving
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Leader mappings
vim.keymap.set("n", "<leader>l", "<cmd>echo 'LSP'<CR>", { desc = "LSP" })
vim.keymap.set("n", "<leader>x", "<cmd>echo 'Diagnostics'<CR>", { desc = "Diagnostics" })
vim.keymap.set("n", "<leader>b", "<cmd>echo 'Buffers'<CR>", { desc = "Buffers" })

-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to Declaration" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Find References" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to Implementation" })
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "Code Action" })
vim.keymap.set("n", "<leader>ln", vim.lsp.buf.rename, { desc = "Rename" })

vim.keymap.set("n", "<leader>ga", function()
    vim.fn.jobstart({ "git", "add", vim.fn.expand("%:p") }, {
        cwd = vim.fn.getcwd(),
        detach = true,
    })
end, {
    desc = "Git Add Current File",
})

-- Diagnostics
vim.keymap.set("n", "<leader>xx", vim.diagnostic.open_float, {
  desc = "Line Diagnostics",
})

vim.keymap.set("n", "<leader>xq", vim.diagnostic.setloclist, {
  desc = "Diagnostics List",
})

vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {
  desc = "Next Diagnostic",
})

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {
  desc = "Previous Diagnostic",
})
