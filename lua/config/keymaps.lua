-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<A-j>", "15j", {})
vim.keymap.set("n", "<A-k>", "15k", {})
vim.keymap.set("n", "<TAB>", "<cmd>BufferLineCycleNext<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<S-TAB>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>hh", "<cmd>GrapplePopup tags<cr>", { desc = "Harpoon View" })
vim.keymap.set("n", "<leader>ha", '<cmd>lua require("grapple").toggle()<cr>', { desc = "Harpoon View" })
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Neotree" })
vim.keymap.set("n", "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Find in buffer" })
vim.keymap.set("n", "<leader>gg", function()
  require("config.utils.terminals").lazygit()
end, { desc = "LazyGit" })
vim.keymap.set("n", "<leader>tb", function()
  require("config.utils.terminals").bottom()
end, { desc = "Float Btm" })
vim.keymap.set("n", "<leader>td", function()
  require("config.utils.terminals").gdu()
end, { desc = "Float Disk Usage" })
vim.keymap.set("n", "<leader>tf", function()
  require("config.utils.terminals").float()
end, { desc = "Float" })
vim.keymap.set("n", "<leader>tp", function()
  require("config.utils.terminals").python()
end, { desc = "Python" })

vim.api.nvim_set_keymap("v", "<leader>/", "gc", { desc = "Comment Selection" })
vim.api.nvim_set_keymap("n", "<leader>/", "Vgc", { desc = "Comment Line" })
vim.api.nvim_set_keymap("n", "q", ":q!<cr>", { desc = "Quit" })

-- LSP keymaps
vim.keymap.del("n", "<leader>l", {})
vim.keymap.set("n", "<leader>la", function()
  local curr_row = vim.api.nvim_win_get_cursor(0)[1]
  vim.lsp.buf.code_action({
    ["range"] = {
      ["start"] = { curr_row, 0 },
      ["end"] = { curr_row, 100 },
    },
  })
end, { desc = "Code Action on Line" })
vim.keymap.set("n", "<leader>ll", vim.lsp.codelens.run, { desc = "LSP CodeLens" })
vim.keymap.set("n", "<leader>lL", vim.lsp.codelens.refresh, { desc = "Refresh CodeLens" })
vim.keymap.set("n", "<leader>li", "<cmd>LspInfo<cr>", { desc = "LSP Info" })
vim.keymap.set("n", "<leader>lS", "<cmd>LspStart<cr>", { desc = "LSP Start" })
vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, { desc = "LSP Diag" })
vim.keymap.set("n", "<leader>lf", require("lazyvim.plugins.lsp.format").format, { desc = "LSP Format" })
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "LSP Rename" })
