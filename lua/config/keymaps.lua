-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("n", "<A-j>", "15j", {})
vim.api.nvim_set_keymap("n", "<A-k>", "15k", {})
vim.api.nvim_set_keymap("n", "<TAB>", "<cmd>BufferLineCycleNext<cr>", { desc = "Prev buffer" })
vim.api.nvim_set_keymap("n", "<S-TAB>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Next buffer" })
vim.api.nvim_set_keymap("n", "<leader>hh", "<cmd>GrapplePopup tags<cr>", { desc = "Harpoon View" })
vim.api.nvim_set_keymap("n", "<leader>ha", '<cmd>lua require("grapple").toggle()<cr>', { desc = "Harpoon View" })
vim.api.nvim_set_keymap("v", "<leader>/", "gc", { desc = "Comment Selection" })
vim.api.nvim_set_keymap("n", "<leader>/", "Vgc", { desc = "Comment Line" })
vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Neotree" })
vim.api.nvim_set_keymap("n", "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Find in buffer" })
